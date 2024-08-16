app.controller('postTaskCtrl', ['$scope', 'masterData', function($scope, masterData) {
    var masterData = new masterData();
    $scope.skills = [];
    $scope.newSkill = "";

    masterData.getCategories().then(function(promise) {
        $scope.categories = promise.data;
    });

    $scope.getSubCategories = function() {
        if ($scope.obj.categoryId) {
            masterData.getSubCategories($scope.obj.categoryId).then(function(promise) {
                $scope.subcategories = promise.data;
            })
        } else {
            $scope.subcategories = null;
            $scope.obj.subCategoryId = "";
        }
    }

    masterData.getSkills().then(function(promise) {
        $scope.skillList = promise.data;
    })

    $scope.addSkill = function() {
        if ($scope.skills.indexOf($scope.newSkill) == -1) {
            $scope.skills.push({ title: $scope.newSkill });
        }
        $scope.newSkill = '';
    };
    $scope.removeSkill = function(index) {
        $scope.skills.splice(index, 1);
    };
    $scope.addTask = function(obj) {
    }
}]);
