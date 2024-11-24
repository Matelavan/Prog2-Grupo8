const { Sequelize } = require('sequelize');

// Replace with your database credentials
const sequelize = new Sequelize('ecommerce', 'root', 'root', {
    host: '127.0.0.1',
    dialect: 'mysql',
    port: 3306
});

sequelize.authenticate()
    .then(() => console.log('Database connected successfully!'))
    .catch(err => console.error('Unable to connect to the database:', err));
