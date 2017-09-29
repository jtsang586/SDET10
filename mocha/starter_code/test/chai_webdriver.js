// Load dependecies
var expect = require('chai').expect,
test = require('selenium-webdriver/testing'),
webdriver = require('selenium-webdriver');

// Our test
test.describe('Test', function () {

    var driver = null;

    before(function(done){
        this.timeout(10000);

        driver = new webdriver.Builder().
        withCapabilities(webdriver.Capabilities.chrome()).
        build();

        // Go to URL
        driver.get('http://localhost:3333/cars');
        done();
    })

    test.it('Current Url should be http://localhost:3333/cars ', function () {
        // Find title and assert
        // driver.executeScript('return document.title').then(function(return_value) {
            expect(driver.getCurrentUrl()).to.equal('http://localhost:3333/cars');
             // Quit webdriver
            driver.quit();
        // });
    });

    // test.it('should have title called "cars" ', function(){
    //     driver.executeScript('return document.title').then(function(return_value) {
    //         driver.findElement(webdriver.By.xpath('//*[@id="title"]'))
    //         driver.quit();
    //     });

    // })

    test.it('click on new car ', function(){
        driver.executeScript('return document.title').then(function(return_value) {
            driver.findElement(webdriver.By.xpath('//*[@id="bs-example-navbar-collapse-1"]/ul/li/a')).click();
            driver.quit();
        });

    })
});
