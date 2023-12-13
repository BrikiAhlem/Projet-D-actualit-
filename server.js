const express = require("express");
const exphbs = require("express-handlebars");
const app = express();
const port = 3001;
const path = require('path');
const mysql = require('mysql');

// Configuration du moteur de template Handlebars
app.engine('handlebars', exphbs.engine({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');
app.set('views', path.join(__dirname, 'views'));

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'news'
});

connection.connect();
function formatDate(date) {
  const formattedDate = new Date(date);

  const year = formattedDate.getFullYear();
  let month = formattedDate.getMonth() + 1;
  let day = formattedDate.getDate();
  let hours = formattedDate.getHours();
  let minutes = formattedDate.getMinutes();

  // Ajoute un zéro devant les chiffres < 10 pour le formatage
  month = month < 10 ? `0${month}` : month;
  day = day < 10 ? `0${day}` : day;
  hours = hours < 10 ? `0${hours}` : hours;
  minutes = minutes < 10 ? `0${minutes}` : minutes;

  const formattedDateTime = `${year}-${month}-${day} ${hours}:${minutes}`;
  return formattedDateTime;
}


app.get("/", (req, res) => {
  connection.query('SELECT * FROM actualite ORDER BY date_publication DESC', (error, results) => {
    if (error) throw error;

    // Formatage des dates avant de les envoyer au template
    results.forEach(result => {
      result.date_publication = formatDate(result.date_publication);
    });

    res.render('index', { actualites: results, layout: 'main' });
  });
});



app.get("/add", (req, res) => {
  res.sendFile(path.join(__dirname, "views/add.html"));
});

app.get("/addnews", function(req, res) {
    var untitre = req.query.letitre;
    var unedesc = req.query.ladescription;
    var sql = "INSERT INTO actualite (titre, description) VALUES (?, ?)";
    
    connection.query(sql, [untitre, unedesc], function(error, results, fields) {
        if (error) throw error;
        res.redirect('/');
    });
});


app.listen(port, () => {
  console.log(`Le succés n'est pas un hasard , mais une décision . le  port ${port}`);
});
