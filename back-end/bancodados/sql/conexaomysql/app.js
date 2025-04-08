const mysql = require('mysql2')

const db  = mysql.createConnection({
    host: 'localhost',
    user: 'mila',
    password: '2002',
    database: 'mercado'
});

db.connect((error)=>{
    if (error){
        console.log("Erro ao conectar com o banco de dados")
    }else{
        console.log("Conectado ao MySQL")
    }
});

db.query('SELECT * FROM funcionario', (error, results) =>{
    if (error){
        console.log("Erro ao consultar os dados")
    } else {
        console.log(results);
    }
});

db.query('select nome as cliente from cliente limit 3', (error, results)=> {
    if (error){
        console.log("Erro ao consultar os dados")
    } else {
        console.log(results);
        console.log(results[1].cliente);
    }
})