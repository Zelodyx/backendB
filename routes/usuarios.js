const {Router} = require("express")
const{getUsers, getUsersByID} = require("../controllers/usuarios")
const router = Router()

//http://localhost:4000/api/v1/usuarios
//http://localhost:4000/api/v1/usuarios/id/

router.get("/", getUsers)
router.get("/id/:id", getUsersByID)
module.exports = router