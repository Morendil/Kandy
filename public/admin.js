var myApp = angular.module('myApp', ['ng-admin']);
myApp.config(['NgAdminConfigurationProvider', function (nga) {
    // create an admin application
    var admin = nga.application('Kandy Admin')
      .baseApiUrl(location.protocol + '//' + location.hostname + (location.port ? ':' + location.port : '') + '/'); // main API endpoint
    // create a user entity
    // the API endpoint for this entity will be 'http://jsonplaceholder.typicode.com/users/:id
    var applicant = nga.entity('applicants');
    // set the fields of the user entity list view    
    applicant.listView().fields([
        nga.field('phone'),
        nga.field('name'),
    ]);
    applicant.listView().listActions(['show','edit', 'delete']);
    //
    applicant.creationView().fields([
        nga.field('phone'),
        nga.field('name'),
    ]);
    applicant.editionView().fields([
        nga.field('phone'),
        nga.field('name'),
    ]);
    applicant.showView().fields([
        nga.field('phone'),
        nga.field('name'),
    ]);
    // add the user entity to the admin application
    admin.addEntity(applicant)
    // attach the admin application to the DOM and execute it
    nga.configure(admin);
}]);