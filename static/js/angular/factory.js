app.factory('dataCache', ['$cacheFactory', function ($cacheFactory) {
    return $cacheFactory('dataCache');
}]);

app.factory('masterData', ['$http', 'dataCache', function ($http, dataCache) {
    return function () {
        var self = this;
        self.getCategories = function (isactive) {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/categories/?isactive=' + isactive,
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.getSubCategories = function (categoryId, isactive) {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/subcategories/' + categoryId + '/?isactive=' + isactive,
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    console.log(data)
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.getSkills = function () {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/skills/',
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.getDisabilityType = function () {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/disabiltytype/',
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.getcities = function () {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/city/',
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.gettaskers = function () {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/taskers/',
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.gettasklancers = function () {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/tasklancers/',
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.getTaskRate = function (sub_category_id) {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/taskrates/' + sub_category_id + '/',
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.getCategoryBySubCatId = function (maskingname) {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/getcategoryid/' + maskingname + '/',
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.getSubCategoryDetail = function (maskingname) {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/getsubcatdetails/' + maskingname + '/',
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        return self;
    }
}]);

app.factory('login', ['$http', 'dataCache', function ($http, dataCache) {
    return function () {
        var self = this;

        self.getClientDetail = function (access_token) {
            var promise = $http({
                method: 'GET',
                url: 'https://www.googleapis.com/userinfo/v2/me?access_token=' + access_token,
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.addTasker = function (obj) {
            var promise = $http({
                method: 'POST',
                url: '/api/v1/tasker/add/',
                headers: {
                    'Content-Type': 'application/json'
                },
                // cache: dataCache
                data: obj
            }).success(function (data, status, headers, config) {
                return data;
            }).error(function (data, status, headers, config) {
                return {
                    "status": false
                };
            });
            return promise;
        }

        self.addDonor = function (obj) {
            var promise = $http({
                method: 'POST',
                url: '/api/v1/tasker/addDonor/',
                headers: {
                    'Content-Type': 'application/json'
                },
                // cache: dataCache
                data: obj
            }).success(function (data, status, headers, config) {
                return data;
            }).error(function (data, status, headers, config) {
                return {
                    "status": false
                };
            });
            return promise;
        }

        self.sendTaskerNotification = function (taskerId, projectId) {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/tasker/notification/?tasker_id=' + taskerId + '&project_id=' + projectId,
                cache: dataCache
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.getRecommendedTasker = function (project_id) {
            return promise = $http({
                method: 'GET',
                url: '/api/v1/tasker/recommended/?project_id=' + project_id,
                cache: dataCache
            }).success(function (data, status, headers, config) {
                // return data;
            }).error(function (data, status, headers, config) {
                // return { "status": false };
            });
        }

        self.addTaskProvider = function (obj) {
            var promise = $http({
                method: 'POST',
                url: '/api/v1/taskprovider/add',
                headers: {
                    'Content-Type': 'application/json'
                },
                // cache: dataCache
                data: obj
            })
                .success(function (data, status, headers, config) {
                    return data;
                })
                .error(function (data, status, headers, config) {
                    return {
                        "status": false
                    };
                });
            return promise;
        }

        self.interestedTasker = function (taskerId, projectId) {
            return promise = $http({
                method: 'GET',
                url: '/api/v1/tasker/accept/?projectid=' + projectId + '&taskerid=' + taskerId,
                cache: dataCache
            }).success(function (data, status, headers, config) {
                // return data;
            }).error(function (data, status, headers, config) {
                // return { "status": false };
            });
        }

        self.verifyTasker = function (taskerId) {
            return promise = $http({
                method: 'GET',
                url: '/api/v1/verify/tasker?taskerid=' + taskerId,
            }).success(function (data, status, headers, config) {
                return data;
            }).error(function (data, status, headers, config) {
                return {
                    "status": false
                };
            });
        }

        self.getTaskerDetail = function (taskerId) {
            return promise = $http({
                method: 'GET',
                url: '/api/v1/tasker/detail?taskerid=' + taskerId,
            }).success(function (data, status, headers, config) {
                return data;
            }).error(function (data, status, headers, config) {
                return {
                    "status": false
                };
            });
        };

        self.getOtherTasker = function (taskerId) {
            return promise = $http({
                method: 'GET',
                url: '/api/v1/other/tasker/?taskerid=' + taskerId,
            }).success(function (data, status, headers, config) {
                return data;
            }).error(function (data, status, headers, config) {
                return {
                    "status": false
                };
            });
        };
    }
}]);

app.factory('task', ['$http', 'dataCache', function ($http, dataCache) {
    return function () {
        var self = this;

        self.addTask = function (obj) {
            var promise = $http({
                withCredentials: false,
                method: 'post',
                url: '/api/v1/task/add/',
                headers: {
                    'Content-Type': undefined
                },
                data: obj
            }).success(function Succ(data, status, headers, config) { }).error(function (data, status, headers, config) {
                return {
                    "status": false
                };
            });
            return promise;
        }

        self.browseTask = function (categoryId) {
            var promise = $http({
                method: 'GET',
                url: '/api/v1/browse-task/?categoryId=' + categoryId,
                cache: dataCache
            }).success(function Succ(data, status, headers, config) {
                return data;
            }).error(function (data, status, headers, config) {
                return {
                    "status": false
                };
            });
            return promise;
        }

        return self;
    }
}]);


app.factory('myService', function () {
    var savedData = {}

    function set(data) {
        savedData = data;
    }

    function get() {
        return savedData;
    }

    return {
        set: set,
        get: get
    }

});