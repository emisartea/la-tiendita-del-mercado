# 🛒 La Tiendita del Mercado
Proyecto académico orientado al desarrollo de un sistema de comercio electrónico que incluye backend, base de datos en Oracle Autonomous Database y estructura escalable para futuras funcionalidades como carrito de compras, catálogo, administración y más.

---

## 🎯 OBJETIVO DEL PROYECTO
El objetivo principal del proyecto **La Tiendita del Mercado** es desarrollar un sistema funcional de comercio electrónico que incluya:

- Un **modelo de base de datos robusto**, profesional y normalizado.
- Un **backend en Node.js** capaz de gestionar la comunicación con la base de datos.
- Un **repositorio organizado**, versionado y documentado.
- Un entorno de desarrollo limpio que permita ejecutar scripts SQL, levantar el servidor y comenzar con la implementación de funcionalidades.

Este proyecto forma parte del desarrollo académico para demostrar dominio en:
- Creación de entornos de desarrollo  
- Manejo de bases de datos  
- Conexión backend–BD  
- Uso de Git y GitHub  
- Modelado y documentación técnica  

---

## 👥 INTEGRANTES DEL EQUIPO
- EMILY ISABEL ARTEAGA REYNOSO, ARMANDO DANIEL ARTEAGA REYNOSO

---

## 🧰 TECNOLOGÍAS UTILIZADAS

### **Backend**
- Node.js  
- Express.js  
- OracleDB Driver (node-oracledb)

### **Base de Datos**
- Oracle Autonomous Database (ATP - Always Free)
- SQL Developer
- Wallet de conexión (tnsnames.ora + certificados SSL)

### **Herramientas de Desarrollo**
- Visual Studio Code  
- Git y GitHub  
- Oracle Cloud Console  

---

## 📁 ESTRUCTURA DEL PROYECTO

```txt
/la-tiendita-del-mercado
│
├── backend/
│   ├── server.js
│   ├── config/
│   │   └── db.js
│   ├── src/
│   │   ├── routes/
│   │   └── controllers/
│   └── .env
│
├── database/
│   ├── init.sql
│   └── schema/
│       ├── 01_users.sql
│       ├── 02_products.sql
│       ├── ...
│       └── 99_relations.sql
│
└── README.md
Documentaci�n general del proyecto
