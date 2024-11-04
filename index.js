const cors = require('cors')
const express = require('express')
const app = express()
const port = 8000

//본문을 통해서 넘어온 요청 파싱(변환) 미들웨어(body-parser)
//본문을 통해서 넘어온 name=Alice&age=25
app.use(express.json()); //json 형식으로 변환 { "name":"Alice", "age":"25"}
app.use(express.urlencoded()); //json->object { name: "Alice", age: "25" } 

var corsOptions = {
  //origin: 'http://localhost:3000/',
  origin: '*' //모든 출처 허용
}

app.use(cors(corsOptions));

const mysql = require('mysql')
const db = mysql.createConnection({
  host: 'localhost',
  user: 'react_bbs',
  password: '12345',
  database: 'react_bbs'
})

db.connect()

/*
app.get('/', (req, res) => {
  const sql = "INSERT INTO requested (rowno) VALUES (1)";
  db.query(sql, (err, rows, fields) => {
    if (err) throw err;  
    res.send('성공');
    console.log('데이터 추가 성공')
  })  
})
*/

app.get('/list', (req, res) => {
  const sql = "SELECT BOARD_ID, BOARD_TITLE, REGISTER_ID, DATE_FORMAT(REGISTER_DATE , '%Y-%m-%d') AS REGISTER_DATE FROM board";
  db.query(sql, (err, result) => {
    if (err) throw err;  
    res.send(result);
  })  
})

app.post('/insert', (req, res) => {

  let title = req.body.title;
  let content = req.body.content;
  const sql = "INSERT INTO board (BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) VALUES (?,?,'admin')";
  db.query(sql, [title, content], (err, result) => {
    if (err) throw err;  
    res.send(result);
  })  
})


app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

//db.end()