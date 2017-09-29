// Add our dependencies
var expect = require('chai').expect;
var supertest = require('supertest');
var api = supertest('http://localhost:3333/api');
var mongoose = require('mongoose');

// Set up some db helpers
mongoose.Promise = global.Promise;
mongoose.connect('mongodb://localhost/cars');
var db = mongoose.connection;
db.dropDatabase();

describe('GET/ api/cars', function(){

    before(function(done){
        var response = null;
        api.post('/cars')
        // Setting the headers for the request
        .set('Accept', 'application/json')
        .send({
            // The entry we want in the DB
            "name": "VW",
            "description": "This is /cars description",
            "image": 
            "https://i.ytimg.com/vi/6JSMAbeUS-4/maxresdefault.jpg",
        }).end(done);
    })

    it("should return a 200 response", function(done){
        api.get('/cars')
        .set("Accept", "application/json")
        .expect(200, done)
    })

    it("should return an array", function(done){
        api.get('/cars')
        .set("Accept", "application/json")
        .end(function(error, response){
            expect(response.body.cars).to.be.an("array");
            done()
        })
    })

    it("should return an object that has a field called 'name' ", function(done){
        api.get('/cars')
        .set("Accept", "application/json")
        .end(function(error, response){
            expect(response.body.cars[0]).to.have.property("name");
            done()
        })
    })

    it("should return a string for name", function(done){
        api.get('/cars')
        .set("Accept", "application/json")
        .end(function(error, response){
            expect(response.body.cars[0].name).to.be.a("string");
            done()
        })
    })

})

describe('POST/ api.cars', function(){

    // before(function(done){
    before(function(done){
        api.post('/cars')
        // Setting the headers for the request
        .set('Accept', 'application/json')
        .send({
            // The entry we want in the DB
            "name": "Baby Cars",
            "description": "Cars 3",
            "image": 
            "https://i.ytimg.com/vi/6JSMAbeUS-4/maxresdefault.jpg",
        }).end(done);
    })

    // })
    it("should return an array of 1", function(done){
        api.get('/cars')
        .set("Accept", "application/json")
        .end(function(error, response){
            expect(response.body.cars.length).to.be.equal(2);
            done()
        })
    })

    it("should be 'Baby Cars' in name", function(done){
        api.get('/cars')
        .set("Accept", "application/json")
        .end(function(error, response){
            var arraySize = response.body.cars.length - 1
            expect(response.body.cars[arraySize].name).to.equal("Baby Cars");
            done()
        })
    })

    it("should be 'Cars 3' in description", function(done){
        api.get('/cars')
        .set("Accept", "application/json")
        .end(function(error, response){
            var arraySize = response.body.cars.length - 1
            expect(response.body.cars[arraySize].description).to.equal("Cars 3");
            done()
        })
    })

    it("should contain the characters '59c91' in the id", function(done){
        api.get('/cars')
        .set("Accept", "application/json")
        .end(function(error, response){
            var arraySize = response.body.cars.length - 1
            expect(response.body.cars[arraySize]._id).to.contain("59c9");
            done()
        })
    })

    it("should contain an integer in the last character of the id", function(done){
        api.get('/cars')
        .set("Accept", "application/json")
        .end(function(error, response){
            var arraySize = response.body.cars.length - 1
            var strLength = response.body.cars[arraySize]._id.length - 1
            var lastIdChar = parseInt(response.body.cars[arraySize]._id[strLength])
            expect(lastIdChar).to.be.a("number");
            done()
        })
    })

})

describe('GET /cars/id', function(){
    var id;
    var name;
    var des;
    var img;
    before(function(done){
        api.post('/cars')
        // Setting the headers for the request
        .set('Accept', 'application/json')
        .send({
            // The entry we want in the DB
            "name": "£200 Car",
            "description": "Affordable car",
            "image": "https://testing.co.uk",
        }).end(function(error, response){
            id = response.body._id;
            name = response.body.name;
            des = response.body.description;
            img = response.body.image;
            done();
        })
    })
    it("Should return a matching object from api and db", function(done){ 
        api.get('/cars/' + id)
        .set('Accept', 'application/json')
        .end(function(error, response){
            var res = response.body
            expect(res.name).to.equal(name);
            expect(res.description).to.equal(des);
            expect(res.image).to.equal(img);
            done();
        })
    })
})

describe('DESTROY /cars/id', function(){

    var id;

    before(function(done){

        api.post('/cars')
        // Setting the headers for the request
        .set('Accept', 'application/json')
        .send({
            // The entry we want in the DB
            "name": "£200 Car",
            "description": "Affordable car",
            "image": "https://testing.co.uk",
        })

        .end(function(error, response){
            id = response.body._id; 
            api.delete('/cars/'+ id)
            .end(function(error, response){
                done();
            })
        })
    })

    it("should return null when trying to access deleted page", function(done){
        api.get('/cars/'+ id)
        .set("Accept", "application/json")
        .end(function(error, response){
            expect(response.body).to.be.a('null');
            done();
        })
    })
})


