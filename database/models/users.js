module.exports = function (sequelize, dataTypes){

    let alias = 'Users'; 

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        nombre: {
            type: dataTypes.STRING
        },
        email: {
            type: dataTypes.STRING,
            
        },
        password: {
            type: dataTypes.STRING
        },
    }

    let config = {
        tableName : "user",
        timestamps:false, 
        underscored: true, 
    };

    const Users = sequelize.define(alias, cols, config);

    Users.associate = function(models) {
        Users.hasMany(models.Product, {
            as: "productos", 
            foreignKey: "user_id"
        })
    }

    return Users;

}