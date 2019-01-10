const express = require('express');
const helmet = require('helmet');
const knex = require('knex');

const knexConfig = require('./knexfile.js');

const db = knex(knexConfig.development);

const PORT = 54321;

const server = express();

server.use(helmet());
server.use(express.json());


server.get('/', (req, res) => {
    res.send(`It's Alive!`);
});


/// get route /// a list of courses currently on the database

server.get('/api/courses', (req, res)  => {
    db('courses').then( courses => {
        res.status(200).json(courses);
    })
    .catch( err => {
        res.status(500).json(err);
    })
});

/// CREATE COURSES ---------------------------
server.post('/api/courses', (req, res) => {
    /// grab the date from the body
    const course = req.body;

    /// save data to the database
    db.insert(course)
        .into('courses')
        .then( ids => {
            /// return the id of newly created record
            res.status(201).json(ids[0]); /// or json(ids); /// for a list of all the the names in the aray
            console.log(ids);
        })
        .catch( err => {
            res.status(500).json(err);
        });


});



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