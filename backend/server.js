const express = require("express");
const cors = require("cors");
require("dotenv").config();

const { getConnection, closePool } = require("./config/db");

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

// Test de servidor
app.get("/", (req, res) => {
  res.json({ message: "API La Tiendita del Mercado funcionando 🚀" });
});

// Test de conexión a Oracle
app.get("/api/db-test", async (req, res) => {
  let conn;
  try {
    conn = await getConnection();
    const result = await conn.execute("SELECT 1 AS ok FROM dual");
    res.json({ db: "ok", result: result.rows });
  } catch (err) {
    console.error("DB error:", err);
    res.status(500).json({
      db: "error",
      detail: err.message
    });
  } finally {
    if (conn) await conn.close();
  }
});

// Iniciar servidor
app.listen(PORT, () => {
  console.log(`🚀 Servidor corriendo en http://localhost:${PORT}`);
});

// Cierre limpio
process.on("SIGINT", async () => {
  console.log("\n⛔ Cerrando servidor...");
  await closePool();
  process.exit(0);
});
// Archivo principal del servidor
