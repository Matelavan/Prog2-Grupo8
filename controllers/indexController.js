const db = require('../database/models')
const op = db.Sequelize.Op;

const indexController = {

    index: function(req,res){
        let filtrado = {
            order: [['createdAt', 'DESC']]
        }

        db.Product.findAll(filtrado)
        .then(function(results){
            return res.render("index", {products: results})
        })
        .catch(function(error){
            console.log(error)
        })
    } ,

    detalle: function(req,res){
        let idProducto = req.params.id
        let producto = {}
        
        for (let i = 0; i < db.Product.length; i++) {
            if (idProducto == db.Product[i].id) {
              producto = db.Movie[i];
            }
            
          }
        
          return res.render("detalle", {singleProducto: producto})
    }
}

module.exports = indexController