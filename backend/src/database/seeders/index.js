const fs = require('fs');
const path = require('path');
const bcrypt = require('bcrypt'); // Mantenlo si lo usas en otra parte del archivo
const { sequelize } = require('../connection');
// Carga de modelos para que Sequelize los registre antes de ejecutar sync
require('../../models');

const seed = async () => {
    try {
        // 1. Sincronizar modelos (creará las tablas si no existen según tus modelos)
        await sequelize.sync({ alter: true });
        console.log('--- Modelos Sincronizados ---');
        console.log('--- Iniciando Seeding desde archivo SQL ---');

        // 2. Ruta absoluta hacia tu archivo script_insert (1).sql
        // Asumiendo que el archivo .sql está en la misma carpeta que este index.js
        const sqlFilePath = path.join(__dirname, 'Script_insert (1).sql');

        // 3. Leer el contenido del archivo .sql
        if (!fs.existsSync(sqlFilePath)) {
            throw new Error(`No se encontró el archivo SQL en la ruta: ${sqlFilePath}`);
        }
        const sqlScript = fs.readFileSync(sqlFilePath, 'utf8');

        // 4. Ejecutar todo el script SQL de manera nativa en la Base de Datos
        // Sequelize ejecutará el bloque completo respetando los BEGIN y COMMIT internos del archivo
        await sequelize.query(sqlScript);

        console.log('--- ¡Seeding completado con éxito desde el script SQL! ---');
    } catch (error) {
        console.error('❌ Error durante el proceso de Seeding:', error);
    } finally {
        // Opcional: Cerrar la conexión si ejecutas este script de forma aislada
        // await sequelize.close();
    }
};

// Si ejecutas este archivo directamente desde la terminal (node index.js), descomenta la siguiente línea:
seed();

module.exports = { seed };