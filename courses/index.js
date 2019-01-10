const express = require('express');
const helmet = require('helmet');


const server = express();
const PORT = 5432;


server.use(helmet());
server.use(express.json());


server.get('/', (req, res) => {
    res.send(`Its Alive`);
});

server.listen(PORT, () => {
    console.log(`Its Working! Its Working!
                API Running on Port ${5432}`);
})