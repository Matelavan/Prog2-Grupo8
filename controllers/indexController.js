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
    }

}

module.exports = indexController