blog = angular.module('blog', [
  'templates',
  'ngRoute',
  'ngResource',
  'controllers',
  'angular-flash.service',
  'angular-flash.flash-alert-directive'
])

# = depend_on_asset index.html
# = depend_on_asset new.html

# blog.config(['$routeProvider',
#   ($routeProvider)->
#     $routeProvider
#       .when('/',
#         # templateUrl: "<%= asset_path('users/login.html') %>"
#         controller: "UsersLoginController"
#       )
#       .when('/users/new',
#         templateUrl: "<%= asset_path('users/new.html') %>"
#         controller: "UsersNewController"
#       )
# ])

# controllers = angular.module('controllers', [])
# controllers.controller("UsersLoginController", [
#   '$scope',
#   '$routeParams',
#   '$location',
#   '$resource'
#   ($scope, $routeParams, $location, $resource)->
#     # SEARCH FUNCTIONALITY
#     $scope.search = (keywords)-> $location.path("/").search("keywords", keywords)

#     # KEYWORDS FUNCTIONALITY
#     if $routeParams.keywords
#       keywords = $routeParams.keywords.toLowerCase()
#       $scope.recipes = recipes.filter (recipe)-> recipe.name.toLowerCase().indexOf(keywords) != -1
#     else
#       $scope.recipes = []
# ])