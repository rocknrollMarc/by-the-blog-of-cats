'use strict';

var blog_of_cats = angular.module('blog_of_cats', [
  'templates',
  'ngRoute',
  'ngResource',
  'controllers',
  'angular-flash.service',
  'angular-flash.flash-alert-directive',
  'angular-bootstrap',
  'DropdownCtrl'
]);


blog_of_cats.config(['$routeProvider',
  function($routeProvider){
    $routeProvider
      .when('/to_be_determined', {
        templateUrl: '',
        controller: ""
      })
      .when('/to_be_determined2', {
        templateUrl: "/pages",
        controller: "PagesController"
      })
  }
])

var controllers = angular.module('controllers', [])

controllers.controller("UsersLoginController", [
  '$scope',
  '$routeParams',
  '$location',
  '$resource',
  function($scope, $routeParams, $location, $resource){
  }
])