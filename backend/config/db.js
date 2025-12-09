const oracledb = require("oracledb");
require("dotenv").config();

let pool = null;

async function initOraclePool() {
  if (pool) return pool;
 
  try {
    console.log("⚙️ Config DB desde env:", {
      user: process.env.DB_USER,
      connectString: process.env.DB_CONNECT,
      TNS_ADMIN: process.env.TNS_ADMIN || process.env.tns_admin,
    });

    pool = await oracledb.createPool({
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      connectString: process.env.DB_CONNECT,
      poolMin: Number(process.env.DB_POOL_MIN || 1),
      poolMax: Number(process.env.DB_POOL_MAX || 5),
      poolIncrement: Number(process.env.DB_POOL_INCREMENT || 1),
      queueTimeout: 0
    });

    console.log("✅ Pool de conexiones Oracle inicializado");
    return pool;
  } catch (err) {
    console.error("❌ Error creando el pool de Oracle:", err);
    throw err;
  }
}

async function getConnection() {
  if (!pool) await initOraclePool();
  return pool.getConnection();
}

async function closePool() {
  if (!pool) return;

  try {
    await pool.close(10);
    console.log("🛑 Pool de Oracle cerrado");
  } catch (err) {
    console.error("❌ Error cerrando pool:", err);
  }
}

module.exports = { initOraclePool, getConnection, closePool };
