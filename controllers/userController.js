const db = require('../database/models')
const op = db.Sequelize.Op;
const bcryptj = require('bcryptjs');


const userController = {
    login: function(req, res) {
        res.render("login",{})
       },

    loginPost: function(req,res){
        let form = req.body;
        let filtro = {
            where: {email: form.email}
        }

        db.User.findOne(filtro)
        .then(function(results){

            if(!results){
                return res.send("No hay mail")
            }else{
                let check = bcryptj.compareSync(form.password , results.password)
                if(check){
                    req.session.user = results.dataValues
                    return res.redirect("/")
                } else{
                    return res.send("La contraseña es incorrecta")
                }
            }
            
        })
        .catch(function(error){
            console.log(error)

        })
    },

    register: function(req, res) {
       res.render("register",{})
      },
    registerPost: function(req, res) {
       let form = req.body;
       let filtro = {
        where: {email: form.email}
    }

       if(req.body.nombre == "" ) {
        return res.send('usuario no puede estar vacío.'); 
     }
       if(req.body.email == "") {
        return res.send('Email no puede estar vacío.'); 
     } 
       if(req.body.password == "" ) {
        return res.send('debes poner una password.'); 
     }
     
     db.User.findOne(filtro)
    .then((results) => {
        if (results) {
            return res.send('Este mail ya ha sido registrado, utiliza otro por favor.');
        }
        
     });
     form.password = bcryptj.hashSync(form.password, 10);
        db.User.create(form)
        .then ((results) => {
            return res.redirect("/users/login");
        })
        .catch((err) => {
            return console.log(err)
        })
        
       },
    
    logOut: function(req, res) {
        req.session.destroy();
        return res.redirect("/")
       }
}

module.exports = userController;