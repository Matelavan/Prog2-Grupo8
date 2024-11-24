const db = require('../database/models')
const op = db.Sequelize.Op;
const { Association } = require('sequelize');

const indexController = {

    index: function(req,res){
        let filtrado = {
            order: [['createdAt', 'DESC']]
        }

        db.Product.findAll({
            include: [
              {
                association: 'user',
              },
            ],
            order: [["created_at", "DESC"]],
          })
        .then(function(results){
            return res.render("index", {products: results})
        })
        .catch(function(error){
            console.log(error)
        })
    } ,

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