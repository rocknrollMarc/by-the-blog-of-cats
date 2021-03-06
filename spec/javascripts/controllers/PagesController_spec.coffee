describe "PagesController", ->
  scope        = null
  ctrl         = null
  location     = null
  routeParams  = null
  resource     = null

  setupController =(keywords)->
    inject(($location, $routeParams, $rootScope, $resource, $controller)->
      scope       = $rootScope.$new()
      location    = $location
      resource    = $resource
      routeParams = $routeParams
      routeParams.keywords = keywords

      ctrl        = $controller('PagesController',
                                $scope: scope
                                $location: location)
    )

  beforeEach(module("blog"))
  beforeEach(setupController())

  it 'defaults to no blogs', ->
    expect(scope.recipes).toEqualData([])