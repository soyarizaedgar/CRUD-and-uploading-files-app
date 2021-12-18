const express =  require('express');
const cors =  require('cors');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use(cors());
const port = 3001;

require("./routes/routes.users")(app);
require("./routes/routes.files")(app);

app.use('/public',express.static('public'));

const sql = require("./models/db");

app.listen(port, ()=>{
    console.log("It's working");
});
