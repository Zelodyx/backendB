const {Router} = require("express")
const{getUsers, getUsersByID, deleteUsersByID, adduser} = require("../controllers/usuarios")
const router = Router()

//http://localhost:4000/api/v1/usuarios
//http://localhost:4000/api/v1/usuarios/id/

///GET///
router.get("/", getUsers)
router.get("/id/:id", getUsersByID)

///POST///
router.post("/", adduser)

///PATCH///
//router.patch("/", updateUser)

///DELETE///
router.delete("/id/:id", deleteUsersByID)
module.exports = router