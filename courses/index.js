const express = require('express');
const helmet = require('helmet');
const knex = require('knex');

const knexConfig = require('./knexfile');
const db = knex(knexConfig.development);

const server = express();
const PORT = 54321
;


server.use(helmet());
server.use(express.json());


server.get('/', (req, res) => {
    res.send(`Its Alive`);
});

/// CREATE COURSES ---------------------------
server,post('/api/courses', (req,res) => {
    /// grab the date from the body
    const course = request.body;



    /// save data to the database
    debug.unsert(course).into(courses)
        .then()
        .catch()


    /// return the id of newly created record
})



///UPDATE COURSES -----------------------------

// server.update('/api/courses' (req, res) => {
  
// });



////DELETE COURSE -----------------------------

// server.delete('/api/courses' (req, res) => {
  
// });



////GET COURSE




server.listen(PORT, () => {
    console.log(`Its Working! Its Working!
        API Running on Port ${PORT} !`);
})