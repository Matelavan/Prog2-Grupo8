const db = require('../database/models');
const op = db.Sequelize.Op;

const productoController = {

    showFormCreate: function (req, res) {
        return res.render("product-add");
    },

    add: function(req, res){

        if (req.session.user != undefined) {
            return res.render("product-add", {title: "Agregar Producto"})
        } else {
            return res.redirect("/users/login")
        }
    },

    processProduct: function (req, res) {
            if (req.body.title == "") {
             return res.send('El título no puede estar vacío.');
        }
            if (req.body.description == "") {
                return res.send('La descripción no puede estar vacía.');
        }
            if (req.body.image == "") {
                return res.send('La imagen no puede estar vacía.');
        }
          
    },

    store:function (req,res) {
        let product = req.body;
        db.Product.create(product)
        .then(function (results) {
            return res.redirect("../");
        })
        .catch(function (err) {
          console.log(err);
          
        })
        
        
      },

    search: function (req, res) {
        let qs = req.query.Product;

        let filtrado = {
            where: [{ title: { [op.like]: `%${qs}%` } }],
            order: [['createdAt', 'DESC']],
            include: [{ model: db.User, as: 'user' }]
        };

        db.Product.findAll(filtrado)
            .then(function (results) {
                if (results.length > 0) {
                    return res.render('search-results', { results: results });
                } else {
                    return res.send('No hay resultados para su criterio de búsqueda');
                }
            })
            .catch(function (err) {
                console.log(err);
            });
    },

    showProductDetail: function (req, res) {
        let productId = req.params.id;

        db.Product.findByPk(productId, {
            include: [{ model: db.User, as: 'user' }]
        })
            .then(function (product) {
                if (product) {
                    return res.render('product', { product: product });
                } else {
                    return res.send('Producto no encontrado');
                }
            })
            .catch(function (err) {
                console.log(err);
            });
    },

    showUserProfile : function (req, res) {
        let userId = req.params.id;

        db.User.findByPk(userId)
            .then(function (user) {
                if (user) {
                    return res.render('user-profile', { user: user });
                } else {
                    return res.send('Usuario no encontrado');
                }
            })
            .catch(function (err) {
                console.log(err);
            });
    }
};

module.exports = productoController;
