const db = require('../database/models');
const op = db.Sequelize.Op;

const productoController = {

    showFormCreate: function (req, res) {
        return res.render("product-add");
    },

    search: function (req, res) {
        let qs = req.query.Product;

        let filtrado = {
            where: [{ title: { [op.like]: `%${qs}%` } }],
        };

        db.Product.findAll(filtrado)
            .then(function (results) {
                return res.send(results); 
            })
            .catch(function (err) {
                console.log(err); 
            });
    },


    store: function (req, res) {
        let producto = req.body;

        db.Product.create(Product)
            .then(function (results) {
                return res.redirect("/products"); 
            })
            .catch(function (err) {
                console.log(err); 
            });
    },
};

module.exports = productoController;
