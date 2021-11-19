const express = require('express');

const app = express();

const settings = require('./config/settings');

const PORT = settings.port;

require('dotenv').config();

app.get('/', (req, res) => {
  res.send('<h1 style="text-align:center;">Welcome</h1>');
});

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});
