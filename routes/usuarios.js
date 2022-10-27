const {Router} = require("express")
const{getUsers, getUsersByID, deleteUsersByID, adduser, updateuser, updateUserByUsuario, singIn, changepass} = require("../controllers/usuarios")
const router = Router()

//http://localhost:4000/api/v1/usuarios
//http://localhost:4000/api/v1/usuarios/id/

///GET///
router.get("/", getUsers)
router.get("/id/:id", getUsersByID)

///POST///
router.post("/", adduser)
router.post("/singing", singIn)
router.post("/changepass", changepass)

///PATCH///
router.patch("/id/:id", updateuser)

///PUT///
router.put("/", updateUserByUsuario)

///DELETE///
router.delete("/id/:id", deleteUsersByID)
module.exports = router