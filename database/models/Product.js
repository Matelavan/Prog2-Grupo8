module.exports = function(sequelize, DataTypes){
    let alias = "Product"

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
            type: DataTypes.TEXT,
            
        },

        imagen: {
            type: DataTypes.STRING,
          
        },

        created_at: {
            type: DataTypes.DATE, 
        },

        deleted_at: {
            type: DataTypes.DATE,
        },

        user_id: {
            type: DataTypes.INTEGER,
            allowNull: false
        } 
        
     }
    let config = {
        tableName : "productos",
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
