const express = require("express");
const connectToMongo = require("./db");
const cors = require("cors");

const app = express();
app.use(cors());
const Port = 8080;

app.use('/api/User' , require('./Routes/User'));
app.use('/api/Dish' , require('./Routes/Dish'));

connectToMongo();
app.listen(Port, () => console.log("Server is running"));