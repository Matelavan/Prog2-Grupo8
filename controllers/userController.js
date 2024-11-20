const db = require('../database/models')
const op = db.Sequelize.Op;

const userController = {

    register: function(req, res, next) {
        res.send('ruta tegistro');
      }
    

}

module.exports = userController;