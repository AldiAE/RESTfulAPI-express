'use strict';

module.exports = function(app) {
    var todoList = require('./controller');

    app.route('/')
        .get(todoList.index);

    app.route('/cities')
        .get(todoList.cities);
    
    app.route('/cities/:id')
        .get(todoList.findCities);

    app.route('/cities')
        .post(todoList.createCities);

    app.route('/cities')
        .put(todoList.updateCities);
    
    app.route('/cities')
        .delete(todoList.deleteCities);

    app.route('/posts')
        .get(todoList.posts);
    
    app.route('/posts/:id')
            .get(todoList.findPosts);
    
    app.route('/posts')
            .post(todoList.createPosts);
    
    app.route('/posts')
            .put(todoList.updatePosts);
        
    app.route('/posts')
            .delete(todoList.deletePosts);
};