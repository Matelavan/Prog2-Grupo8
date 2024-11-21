const db = require('../database/models')
const op = db.Sequelize.Op;

const userController = {
    login: function(req, res) {
        res.render("login",{})
       },

    

    register: function(req, res) {
       res.render("register",{})
      },
    registerPost: function(req, res) {
       let form = req.body;

        db.User.create(form)
        .then ((results) => {
            return res.redirect("/users/login");
        })
        .catch((err) => {
            return console.log(err)
        })
        
       },

}

module.exports = userController;