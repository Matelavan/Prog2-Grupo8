module.exports = function(sequelize, DataTypes){
    let alias = "Product"

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: DataTypes.STRING,
           
        },

        description: {
            type: DataTypes.TEXT,
            
        },

        image: {
            type: DataTypes.STRING,
          
        },

        createdAt: {
            type: DataTypes.DATE, 
        },

        updatedAt: {
            type: DataTypes.DATE,
        },

        user_id: {
            type: DataTypes.INTEGER,
            allowNull: false
        } 
        
     }
    let config = {
        tableName : "products",
        timestamps : false,
        underscored : true
    }
    
  
   
    let Product = sequelize.define(alias,cols,config)

    Product.associate = (models) => {
        Product.belongsTo(models.User, {
            foreignKey: 'userId',
            as: 'user',
        });
    };

    return Product
    }
