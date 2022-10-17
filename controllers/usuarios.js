const { request, response } = require("express");
const pool = require("../db/connection");

const getUsers= async (req = request, res = response) => {
    let conn;
    
    try{
        conn = await pool.getConnection() //Realizamons la conexion

        //Generamos la consulta
        const users = await conn.query("SELECT * FROM Usuarios", (error) => {if (error) throw error})

        if (!users){ //En caso de no haber registros lo informamos
            res.status(404).json({msg: "No existen usuarios registrados"})
            return
        }

        res.json({users}) //Se manda la lista de usuarios
    }
    catch(error){
        console.log(error)
        res.status(500).json({msg: error}) //Informamos el error
    }
    
    finally{
        if(conn) conn.end() //Termina la conexion
    }
    }
    //console.log("Función getUsers")
    //res.json({msg: "Función getUsers"})
//}

module.exports = {getUsers}