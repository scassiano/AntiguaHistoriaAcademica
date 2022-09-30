import mysql from "promise-mysql"
import config from "./../config"

const connection=mysql.createConnection({
    host:process.env.IPDB,
    database:"TuSIA_historiaAcademica_db",
    user:"sarodriguezca",
    password:"aaaaa55555",
    port:3306
})

{/*const connection=mysql.createConnection({
    host:"172.17.0.2",
    database:"TuSIA_historiaAcademica_db",
    user:"sarodriguezca",
    password:"aaaaa55555",
    port:5354
})*/}

{/*const connection=mysql.createConnection({
    host:config.host,
    database:config.database,
    user:config.user,
    password:config.password
})*/}

const getConnection=()=>{
    return connection
}

module.exports={
    getConnection
}