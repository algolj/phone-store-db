const express = require('express');

const app = express();
const cors = require('cors');

const route = require('./route');

const SERVER_PORT = 4000; // communication port that the server will listen

app.use(cors());
app.use(express.json());

route(app);

app.listen(SERVER_PORT, console.log(`Port: ${SERVER_PORT}`));
