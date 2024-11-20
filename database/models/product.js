module.exports = function(sequelize, DataTypes) {

    let alias = "Product";
    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER 
        },
        titulo: {
            type: DataTypes.STRING
        }
        
    }
    let config = {
        tableName: "productos", 
        timestamps: false,
        underscored: true 
    }

    const Product = sequelize.define(alias, cols, config);

    Product.associate = function(models) {
        Product.belongsTo(models.user, {
            as: "user", 
            foreignKey: "user_id"
        });

    }


    return Product

}