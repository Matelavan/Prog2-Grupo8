const db = require('../database/models')
const op = db.Sequelize.Op;
const { Association } = require('sequelize');

const indexController = {

    index: function(req,res){

        db.Product.findAll({
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

        db.Product.findByPk(id)
            .then(function (producto) {
                if (!producto) {
                    return res.send("Producto no encontrado");
                }else{
                    return res.render("detalle", { singleProducto: producto })
                }
                
            })
            .catch(function (error) {
                console.error(error)
            });
    }
}

module.exports = indexController