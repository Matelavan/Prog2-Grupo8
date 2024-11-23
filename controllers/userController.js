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

            if(!result){
                return res.send("No hay mail")
            }else{
                let check = bcryptjs.compareSync(form.password , results.password)
                if(check){
                    return res.redirect("/home")
                } else{
                    return res.send("La contraseña es incorrecta")
                }
            }
            
        })
    }
    
    ,

    register: function(req, res) {
       res.render("register",{})
      },
    registerPost: function(req, res) {
       let form = req.body;
       form.password = bcryptj.hashSync(form.password, 10);
       if(req.body.email == ""){
        return res.send('Email no puede estar vacío.'); 
     }
    

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