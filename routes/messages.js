//http://localhost:4000/api/v1/messages/

const {Router} = require('express')
const router = Router()
const {rootMessage, hiMessage, byeMessage, postMessage, putMessage, deleteMessage} = require('../controllers/messages')

    router.get('/', rootMessage)//End Point //Consultas

    router.get('/hi/:name/:edad', hiMessage) //End Point

    router.get('/bye', byeMessage) //End Point

    router.post('/', postMessage) //Crear o añadir registros

    router.put('/', putMessage) //Actualizar registros
    
    router.delete('/', deleteMessage) //Eliminar registros

    module.exports = router