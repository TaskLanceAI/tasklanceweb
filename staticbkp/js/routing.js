// JavaScript Document
var app = angular.module('taskLance', ['ui.bootstrap', 'ui.router']);
// UI-route config code start here
app.config(function($stateProvider, $urlRouterProvider, $locationProvider) {
    //$locationProvider.html5Mode(true)
    $urlRouterProvider.otherwise('/home');
    $stateProvider
        .state('home', {
            url: '/home',
            templateUrl: 'templates/home.html',
            controller: 'homeCtrl',
            title: 'tasklance.com | Get Hired'
        })
        .state('post-task', {
            url: '/post-task',
            templateUrl: 'templates/post-task.html',
            controller: 'postTaskCtrl'
        })
        .state('browse-task', {
            url: '/browse-task',
            templateUrl: 'templates/browse-task.html'
        })
        .state('how-it-works', {
            url: '/how-it-works',
            templateUrl: 'templates/how-it-works.html'
        })
        .state('login', {
            url: '/login',
            templateUrl: 'templates/login.html',
            controller: 'loginCtrl'
        })
        .state('register', {
            url: '/register',
            templateUrl: 'templates/register.html'
        })
});
