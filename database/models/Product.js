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
            allowNull: false
        },
        descripcion: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        imagen: {
            type: DataTypes.STRING,
            allowNull: true
        },
        user_id: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        created_at: {
            type: DataTypes.DATE,
            allowNull: true
        },
        updated_at: {
            type: DataTypes.DATE,
            allowNull: true
        },
        deleted_at: {
            type: DataTypes.DATE,
            allowNull: true
        }
    };

    let config = {
        tableName: "productos",
        timestamps: true, 
        underscored: true, 
        paranoid: true 
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
