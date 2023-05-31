let app = new angular.module('vizsgaApp', ['ngRoute']);

app.run(function($rootScope) {
    $rootScope.apptitle = "Jegyfoglaló App"
    $rootScope.appauthor = "Kertész Krisztián"
    $rootScope.appcompany ="Bajai SZC Türr István Technikum"
    $rootScope.appcurrency = "Ft"
});

app.config(function($routeProvider) {
    $routeProvider
    .when('/koncertek', {
        templateurl: 'views/koncertek.html',
        controller: 'koncertCtrl'
    })
    .when('/fellepok', {
        templateurl: 'views/fellepok.html',
        controller: 'fellepoCtrl'
    })
    .when('/jegyek', {
        templateurl: 'views/jegyvasarlas.html',
        controller: 'jegyCtrl'
    })
    .otherwise('/koncertek')

});