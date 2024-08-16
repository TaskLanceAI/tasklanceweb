app.controller('loginCtrl', ['$scope', function($scope) {
    $scope.linkedInLogin = function() {
        IN.User.authorize(function(response) {
            if (IN.User.isAuthorized()) {
            }
        }, 'r_basicprofile, r_emailaddress');
    }

    $scope.googleLogin = function() {

    }
}])
