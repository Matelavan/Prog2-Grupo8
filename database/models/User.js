module.exports =  function(sequelize, dataTypes) {

    let alias = "User";

    let cols = {
        id : {
            autoIncrement : true,
            primaryKey : true,
            type : dataTypes.INTEGER
        },
        nombre : {
            type : dataTypes.STRING
        },
        email : {
            type : dataTypes.STRING
        },
        password : {
            type : dataTypes.STRING
        },
       
    };

    let config = {
        tableName : "users",
        timestamps : false,
        underscored :false,
    }

    let User = sequelize.define(alias, cols, config);

    User.associate = function(models){
        User.hasMany(models.Product, {
            as: "productos",
            foreignKey: "user_id"
        })

    }

    return User;
    
}