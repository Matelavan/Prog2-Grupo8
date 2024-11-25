module.exports = function (sequelize, DataTypes) {
    let alias = "Product";

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        titulo: {
            type: DataTypes.STRING,
            
        },
        descripcion: {
            type: DataTypes.STRING,
            
        },
        imagen: {
            type: DataTypes.STRING,
            
        },
        user_id: {
            type: DataTypes.INTEGER,
            
        },
       
    };

    let config = {
        tableName: "productos",
        timestamps: false, 
        underscored: true, 
    };

    let Product = sequelize.define(alias, cols, config);


    Product.associate = function (models) {
      
        Product.belongsTo(models.User, {
            foreignKey: "user_id",
            as: "user"
        });
    };

    return Product;
};
