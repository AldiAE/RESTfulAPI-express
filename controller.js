'use strict';

var response = require('./res');
var connection = require('./conn');

exports.cities = function(req, res) {
    connection.query('SELECT * FROM cities', function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

exports.posts = function(req, res) {
    connection.query('SELECT * FROM posts', function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

exports.index = function(req, res) {
    response.ok("Hello from the Node JS RESTful side!", res)
};

//Operasi CRUD table cities In Here//

exports.findCities = function(req, res) {
    
    var id = req.params.id;

    connection.query('SELECT * FROM cities where id = ?',
    [ id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

exports.createCities = function(req, res) {
    
    var cityName = req.body.cityName;
    var country = req.body.country;
    var description = req.body.description;

    connection.query('INSERT INTO cities (cityName, country, description) values (?,?,?)',
    [ cityName, country, description ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok("Berhasil menambahkan Kota!", res)
        }
    });
};

exports.updateCities = function(req, res) {
    
    var id = req.body.id;
    var cityName = req.body.cityName;
    var country = req.body.country;
    var description = req.body.description;

    connection.query('UPDATE cities SET cityName = ?, country = ?, description = ? WHERE id = ?',
    [ cityName, country, description, id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok("Berhasil merubah Kota!", res)
        }
    });
};

exports.deleteCities = function(req, res) {
    
    var id = req.body.id;

    connection.query('DELETE FROM cities WHERE id = ?',
    [ id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok("Berhasil menghapus Kota!", res)
        }
    });
};

//Operasi CRUD table posts In Here//

exports.findPosts = function(req, res) {
    
    var id = req.params.id;

    connection.query('SELECT * FROM posts where id = ?',
    [ id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

exports.createPosts = function(req, res) {
    
    var title = req.body.title
    var content = req.body.content;

    connection.query('INSERT INTO posts (title, content) values (?,?)',
    [ title, content ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok("Berhasil menambahkan Post!", res)
        }
    });
};

exports.updatePosts = function(req, res) {
    
    var id = req.body.id;
    var title = req.body.title;
    var content = req.body.content;

    connection.query('UPDATE posts SET title = ?, content = ? WHERE id = ?',
    [ title, content, id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok("Berhasil merubah Post!", res)
        }
    });
};

exports.deletePosts= function(req, res) {
    
    var id = req.body.id;

    connection.query('DELETE FROM posts WHERE id = ?',
    [ id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok("Berhasil menghapus Post!", res)
        }
    });
};