app.factory('dataCache', ['$cacheFactory', function($cacheFactory) {
        return $cacheFactory('dataCache');
    }])
    .factory('masterData', ['$http', 'dataCache', function($http, dataCache) {
        return function() {
            var self = this;
            self.getCategories = function() {
                var promise = $http({
                        method: 'GET',
                        url: '/api/v1/categories/',
                        cache: dataCache
                    })
                    .success(function(data, status, headers, config) {
                        return data;
                    })
                    .error(function(data, status, headers, config) {
                        return { "status": false };
                    });
                return promise;
            }

            self.getSubCategories = function(categoryId) {
                var promise = $http({
                        method: 'GET',
                        url: '/api/v1/subcategories/' + categoryId + '/',
                        cache: dataCache
                    })
                    .success(function(data, status, headers, config) {
                        return data;
                    })
                    .error(function(data, status, headers, config) {
                        return { "status": false };
                    });
                return promise;
            }

            self.getSkills = function() {
                var promise = $http({
                        method: 'GET',
                        url: '/api/v1/skills/',
                        cache: dataCache
                    })
                    .success(function(data, status, headers, config) {
                        return data;
                    })
                    .error(function(data, status, headers, config) {
                        return { "status": false };
                    });
                return promise;
            }
            return self;
        }
    }])
