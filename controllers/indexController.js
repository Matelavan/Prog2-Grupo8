const db = require('../database/models')
const op = db.Sequelize.Op;
const { association } = require('sequelize');

const indexController = {

    index: function(req,res){

        db.Product.findAll({
            include: [{association: "user"}],
            order: [
                ['createdAt', 'DESC']
            ],
        })
          .then(function(results){
              return res.render("index", {Product: results})
          })
          .catch(function(error){
              console.log(error)
          })
      },

      detalle: function (req, res) {
        let id = req.params.id;
        let filtrado = {
            include: [
            {association: "user"},
            ]
        }
            

        
            db.Product.findByPk(id, filtrado)
            .then(function (producto) {
                    
                if (!producto) {
                    return res.send("Producto no encontrado");
                }else{
                    return res.render("product", { Product: producto })
                }
                
            })
            .catch(function (error) {
                console.error(error)
            });
    }
}

module.exports = indexController