const modelUsuarios = {
    queryGetUsers: "SELECT * FROM Usuarios",
    queryGetUsersByID: `SELECT * FROM Usuarios WHERE ID = ?`,
    queryDeleteUsersByID: `UPDATE Usuarios SET Activo = 'N' WHERE ID = ?`,
}

module.exports = modelUsuarios