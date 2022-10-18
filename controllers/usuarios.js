const { request, response } = require("express");
const pool = require("../db/connection");
//http://localhost:4000/api/v1/usuarios
const getUsers= async (req = request, res = response) => {
    let conn;
    
    try{
        conn = await pool.getConnection() //Realizamons la conexion

        //Generamos la consulta
        const users = await conn.query("SELECT * FROM Usuarios", (error) => {if (error) throw error})

        if (users.length===0){ //En caso de no haber registros lo informamos
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
const getUsersByID = async (req = request, res = response) =>{
    const {id} = req.params
    let conn;
    
    try{
        conn = await pool.getConnection() //Realizamons la conexion

        //Generamos la consulta
        const [user] = await conn.query(`SELECT * FROM Usuarios WHERE ID = ${id}`, (error) => {if (error) throw error})

        if (!user){ //En caso de no haber registros lo informamos
            res.status(404).json({msg: `No existen usuario registrado con el ID ${id}`})
            return
        }

        res.json({user}) //Se manda la lista de usuarios
    }
    catch(error){
        console.log(error)
        res.status(500).json({msg: error}) //Informamos el error
    }
    
    finally{
        if(conn) conn.end() //Termina la conexion
    }
    }

    const deleteUsersByID = async (req = request, res = response) =>{
        const {id} = req.params
        let conn;
        
        try{
            conn = await pool.getConnection() //Realizamons la conexion
    
            //Generamos la consulta
            const result = await conn.query(`UPDATE Usuarios SET Activo = 'N' WHERE ID = ${id}`, (error) => {if (error) throw error})
    
            if (result.affectedRows ===0){ //En caso de no haber registros lo informamos
                res.status(404).json({msg: `No existen usuario registrado con el ID ${id}`})
                return
            }
    
            res.json({msg:`Se elimino satisfactoriamente el usuario`}) //Se manda la lista de usuarios
        }
        catch(error){
            console.log(error)
            res.status(500).json({msg: error}) //Informamos el error
        }
        
        finally{
            if(conn) conn.end() //Termina la conexion
        }
        }
module.exports = {getUsers, getUsersByID, deleteUsersByID}