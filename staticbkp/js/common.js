// JavaScript Document
var app = angular.module('taskLance', ['ui.bootstrap', 'ui.router', 'angular-google-analytics']);
var jsonData = '/json/browse-category.json';
// UI-route config code start here
app.config(function ($stateProvider, $urlRouterProvider, $locationProvider, AnalyticsProvider) {
    //$locationProvider.html5Mode(true)
    $urlRouterProvider.otherwise('/home');
    AnalyticsProvider.setAccount('UA-83255914-1');
    AnalyticsProvider.trackPages(true);
    AnalyticsProvider.setPageEvent('$stateChangeSuccess');
    $stateProvider
        .state('home', {
            url: '/home',
            templateUrl: 'templates/home.html'
        })
        .state('post-task', {
            url: '/post-task',
            templateUrl: 'templates/post-task.html',
            controller: 'postTaskCtrl as posttaskCt'
        })
        .state('browse-task-1', {
            url: '/browse-task/:categoryId',
            templateUrl: 'templates/browse-task.html',
            controller: 'browseTaskCtrl'
        })
        .state('browse-task', {
            url: '/browse-task',
            templateUrl: 'templates/browse-task.html',
            controller: 'browseTaskCtrl'
        })

        .state('csrprojects', {
            url: '/csrprojects',
            templateUrl: 'templates/csrprojects.html',
            controller: 'browseTaskCtrl'
        })

        .state('taskers', {
            url: '/taskers',
            templateUrl: 'templates/taskers.html',
            controller: 'browseTaskersCtrl as browseTaskerCt'
        })

        .state('tasklancers', {
            url: '/tasklancers',
            templateUrl: 'templates/tasklancers.html',
            controller: 'browseTaskerLancerCtrl as browseTaskLancerCt'
        })

        .state('browse-jobs', {
            url: '/browse-jobs',
            templateUrl: 'templates/browse-jobs.html'
            // controller: 'browseJobCtrl'
        })
        .state('browseTaskCategory/', {
            url: '/browseTaskCategory/:subCat/',
            templateUrl: 'templates/browse-task-category.html',
            controller: "browseCategoryCtrl"
        })
        .state('how-it-works', {
            url: '/how-it-works',
            templateUrl: 'templates/how-it-works.html',
            controller: 'howItWorksCtrl'
        })
        .state('login', {
            url: '/login',
            templateUrl: 'templates/login.html',
            controller: 'loginCtrl'
        })
        .state('taskerlogin', {
            url: '/taskerlogin/',
            templateUrl: 'templates/taskerLogin.html',
            controller: 'taskerloginCtrl as taskerCt'
            // controllerAs: 'taskerCt'
        })
        .state('recommended-tasker', {
            url: '/recommended-tasker/:projectId',
            templateUrl: 'templates/db-restore/task.html',
            controller: 'recommendedTaskerCtrl as recommendedTaskerCt'
        })
        .state('donorlogin', {
            url: '/donorlogin/',
            templateUrl: 'templates/csrregistration.html',
            controller: 'donorloginCtrl as donorCt'
            // controllerAs: 'taskerCt'
        })
        .state('csr-services', {
            url: '/csr',
            templateUrl: 'templates/csr.html'
        })
        .state('become-tasklancer', {
            url: '/become-tasklancer',
            templateUrl: 'templates/taskerlogin.html'
            // controller: 'becometasklancerCtr'
        })
        .state('register', {
            url: '/register/',
            templateUrl: 'templates/register.html'
        })
        .state('about-us', {
            url: '/about-us',
            templateUrl: 'templates/About-us.html'
        })
        .state('contact-us', {
            url: '/contact-us',
            templateUrl: 'templates/Contact-us.html'
        })
        .state('why-tasklance', {
            url: '/why-tasklance',
            templateUrl: 'templates/why-tasklance.html'
        })
        .state('db-restore', {
            url: '/db-restore',
            templateUrl: 'templates/db-restore/task.html'
        })
        .state('browse-task-category', {
            url: '/browse-task-category',
            templateUrl: 'templates/browse-task-category.html'
        })
        .state('tasker-verification', {
            url: '/tasker-verification/:taskerId',
            templateUrl: 'templates/tasker-verification.html',
            controller: 'taskerVerifyCtrl as taskerVerifyCt'
        });
}).run(['Analytics', function (Analytics) { }]);

app.service('task-data', function () {
    var taskData = this;
});

app.factory('dataCache', ['$cacheFactory', function ($cacheFactory) {
    return $cacheFactory('dataCache');
}])
    .factory('masterData', ['$http', 'dataCache', function ($http, dataCache) {
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
                        return { "status": false };
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
                        return data;
                    })
                    .error(function (data, status, headers, config) {
                        return { "status": false };
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
                        return { "status": false };
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
                        return { "status": false };
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
                        return { "status": false };
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
                        return { "status": false };
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
                        return { "status": false };
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
                        return { "status": false };
                    });
                return promise;
            }
            return self;
        }
    }])
    .factory('login', ['$http', 'dataCache', function ($http, dataCache) {
        return function () {
            var self = this;

            self.getClientDetail = function (access_token) {
                var promise = $http({
                    method: 'GET',
                    url: 'https://www.googleapis.com/userinfo/v2/me?access_token=' + access_token,
                    cache: dataCache
                }).success(function (data, status, headers, config) {
                    return data;
                }).error(function (data, status, headers, config) {
                    return { "status": false };
                });
                return promise;
            }

            self.addTasker = function (obj) {
                var promise = $http({
                    method: 'POST',
                    url: '/api/v1/tasker/add/',
                    headers: { 'Content-Type': 'application/json' },
                    // cache: dataCache
                    data: obj
                }).success(function (data, status, headers, config) {
                    return data;
                }).error(function (data, status, headers, config) {
                    return { "status": false };
                });
                return promise;
            }

            self.addDonor = function (obj) {
                var promise = $http({
                    method: 'POST',
                    url: '/api/v1/tasker/addDonor/',
                    headers: { 'Content-Type': 'application/json' },
                    // cache: dataCache
                    data: obj
                }).success(function (data, status, headers, config) {
                    return data;
                }).error(function (data, status, headers, config) {
                    return { "status": false };
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
                        return { "status": false };
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
                    headers: { 'Content-Type': 'application/json' },
                    // cache: dataCache
                    data: obj
                })
                    .success(function (data, status, headers, config) {
                        return data;
                    })
                    .error(function (data, status, headers, config) {
                        return { "status": false };
                    });
                return promise;
            }

            self.verifyTasker = function (taskerId) {
                return promise = $http({
                    method: 'GET',
                    url: '/api/v1/verify/tasker?taskerid=' + taskerId,
                }).success(function (data, status, headers, config) {
                    return data;
                }).error(function (data, status, headers, config) {
                    return { "status": false };
                });
            }
        }
    }]).
    factory('task', ['$http', 'dataCache', function ($http, dataCache) {
        return function () {
            var self = this;

            self.addTask = function (obj) {
                var promise = $http({
                    withCredentials: false,
                    method: 'post',
                    url: '/api/v1/task/add/',
                    headers: { 'Content-Type': undefined },
                    data: obj
                }).success(function Succ(data, status, headers, config) { }).error(function (data, status, headers, config) {
                    return { "status": false };
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
                    return { "status": false };
                });
                return promise;
            }

            return self;
        }
    }]);

app.directive('checkLogin', function () {
    return {
        restrict: 'A',
        link: function (scope, element, attr) {
            if (cookieBase.getCookie('login')) {
                element.hide();
                // if (cookieBase.getCookie('loginImgUrl')) {
                //     document.getElementById("loginImage").src = cookieBase.getCookie('loginImgUrl');
                // } else {
                //     alert('hi')
                // }
            }
        }
    }
}).directive('errSrc', function () {
    return {
        link: function (scope, element, attrs) {
            if (!attrs.ngSrc) {
                attrs.$set('src', attrs.errSrc);
            }

            element.bind('error', function () {
                if (attrs.src != attrs.errSrc) {
                    attrs.$set('src', attrs.errSrc);
                }
            });
        }
    }
}).directive('setInitials', function () {
    return {
        link: function (scope, element, attrs) {
            var matches = attrs.getInitials.match(/\b(\w)/g);              // ['J','S','O','N']
            var acronym = matches.join('');
            $(element).text(acronym.toUpperCase());
        }
    }
})

app.controller('taskerloginCtrl', ['masterData', 'login', function (masterData, login) {
    var masterData = new masterData(),
        login = new login();
    var taskerCt = this;

    taskerCt.isFormVisible = true;
    masterData.getDisabilityType().then(function (promise) {
        taskerCt.disabiltytype = promise.data;
    })

    taskerCt.addTasker = function () {
        login.addTasker(taskerCt.obj).then(function (promise) {
            taskerCt.taskerStatus = promise.data.isSuccess;
            taskerCt.isFormVisible = false;
        })
    }

    taskerCt.addDonor = function () {
        login.addDonor(taskerCt.obj).then(function (promise) {
            taskerCt.taskerStatus = promise.data.isSuccess;
            taskerCt.isFormVisible = false;
        })
    }


    masterData.getcities().then(function (promise) {
        taskerCt.cityname = promise.data;
    })

    masterData.gettaskers().then(function (promise) {
        taskerCt.EmailID = promise.data;
    })

    masterData.gettasklancers().then(function (promise) {
        taskerCt.EmailID = promise.data;
    })
    //

    taskerCt.selectAdUrl = function () {
        var id = taskerCt.obj.subCategoryId;
        masterData.getDisabilityType().then(function (promise) {
            taskerCt.disabiltytype = promise.data;
            if (promise.data.ImageUrl) {
                taskerCt.adUrl = promise.data.AdUrl;
                taskerCt.imgPath = promise.data.ImageUrl;
                document.getElementById('partner-div').style.display = 'block';
            } else {
                document.getElementById('partner-div').style.display = 'none';
            }
        })
    }
}]);

app.controller('howItWorksCtrl', ['$scope', '$location', '$anchorScroll',
    function ($scope, $location, $anchorScroll) {
        $scope.scrollTo = function (scrollLocation) {
            $location.hash(scrollLocation);
            $anchorScroll();
        }
    }
])

// Global Tooltip with UIB code start here
app.controller('uibTooltip', function ($scope, $sce) {
    $scope.placement = {
        options: ['top', 'top-left', 'top-right', 'bottom', 'bottom-left', 'bottom-right', 'left', 'left-top', 'left-bottom', 'right', 'right-top', 'right-bottom'],
        selected: 'top'
    };
});

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

app.controller('postTaskCtrl', ['$scope', 'masterData', 'task', 'myService', '$location', function ($scope, masterData, task, taskData, $location) {
    var posttaskCt = this;
    var masterData = new masterData();
    var tsk = new task();
    posttaskCt.skills = [];
    posttaskCt.newSkill = "";
    posttaskCt.files = [];
    if (taskData.get() instanceof FormData) {
        var data = taskData.get();
        data.append('taskProviderId',cookieBase.getCookie('login'))
        // posttaskCt.obj.taskProviderId = cookieBase.getCookie('login');
        tsk.addTask(data).then(function (promise) {
            if (promise.data) {
                taskData.set({});
                $location.path('/recommended-tasker/' + promise.data);
            }
        })
    }

    posttaskCt.getFiles = function (e) {
        // STORE THE FILE OBJECT IN AN ARRAY.
        posttaskCt.files = e.target.files;
    };

    function taskPosted() {
        if (promise.data) {
            if (obj.categoryId == '')
                document.getElementById('postTaskFrom').style.display = 'none';
            document.getElementById('taskSubmit').style.display = 'block'
        }
    }

    masterData.getCategories('1').then(function (promise) {
        posttaskCt.categories = promise.data;
    });

    posttaskCt.getSubCategories = function () {
        // if ($scope.obj.categoryId == '5') {
        //     document.getElementById('partner-div').style.display = 'block';
        // } else {
        //     document.getElementById('partner-div').style.display = 'none';
        // }
        if (posttaskCt.obj.categoryId) {
            masterData.getSubCategories(posttaskCt.obj.categoryId, '1').then(function (promise) {
                posttaskCt.subcategories = promise.data;
            })
        } else {
            posttaskCt.subcategories = null;
            posttaskCt.obj.subCategoryId = "";
        }
    }

    posttaskCt.selectAdUrl = function () {
        var id = posttaskCt.obj.subCategoryId;
        masterData.getTaskRate(id).then(function (promise) {
            posttaskCt.budget = promise.data;
            if (promise.data.ImageUrl) {
                posttaskCt.adUrl = promise.data.AdUrl;
                posttaskCt.imgPath = promise.data.ImageUrl;
                document.getElementById('partner-div').style.display = 'block';
            } else {
                document.getElementById('partner-div').style.display = 'none';
            }
        })
    }

    // masterData.getSkills().then(function (promise) {
    //     $scope.skillList = promise.data;
    // })

    // $scope.addSkill = function () {
    //     if ($scope.skills.indexOf($scope.newSkill) == -1) {
    //         $scope.skills.push({ title: $scope.newSkill });
    //     }
    //     $scope.newSkill = '';
    // };
    // $scope.removeSkill = function (index) {
    //     $scope.skills.splice(index, 1);
    // };
    posttaskCt.addTask = function (obj) {
        var data = new FormData();
        
        for(var i in posttaskCt.files){
            data.append('uploadedFile',posttaskCt.files[i])
        }
        data.append('taskTitle',posttaskCt.obj.taskTitle);
        data.append('subCategoryId',posttaskCt.obj.subCategoryId);
        
        data.append('taskDesc',posttaskCt.obj.taskDesc);
        data.append('budget',posttaskCt.obj.budget);

        taskData.set(data);
        // posttaskCt.obj.taskProviderId = cookieBase.getCookie('login');
        var cookie = cookieBase.getCookie('login')
        if (cookie) {
            data.append('taskProviderId',cookieBase.getCookie('login'));
            tsk.addTask(data).then(function (promise) {
                if (promise.data) {
                    taskData.set({});
                    $location.path('/recommended-tasker/' + promise.data);
                }
            })
        } else {
            $location.path('/login')
        }
    }
}]);


app.controller('loginCtrl', ['$scope', 'login', 'myService', '$location', function ($scope, login, taskDate, $location) {
    var login = new login();
    $scope.linkedInLogin = function () {
        IN.User.authorize(function (response) {
            if (IN.User.isAuthorized()) {
                IN.API.Raw("/people/~:(id,num-connections,first-name,last-name,industry,specialties,summary,positions,picture-url,email-address)?format=json").result(function (response) {
                    var obj = {
                        emailId: response.emailAddress,
                        experience: '',
                        profileDesc: response.positions.values[0].title,
                        education: ''
                    }

                    loginImageUrl(response['picture-url'])
                    login.addTaskProvider(obj).then(function (promise) {
                        if (promise.data > 0) {
                            cookieBase.SetCookieInDays('login', promise.data, 1);
                            $location.path('/post-task');
                        } else {
                            alert('login failed. please try again.')
                        }
                    })
                }).error(function (err) {
                    console.log(err);
                });
            }
        }, 'r_basicprofile, r_emailaddress');
    }

    $scope.googleLogin = function () {
        var CLIENTID = "487457045830-nr7ua6ju7qah55n6l2v00abilvpsdf0f.apps.googleusercontent.com"
        var SCOPE = "https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile"
        var REDIRECT = location.origin + "/google.html";
        var OAUTHURL = 'https://accounts.google.com/o/oauth2/auth?';
        var VALIDURL = 'https://www.googleapis.com/oauth2/v1/tokeninfo?access_token=';
        var TYPE = 'token';
        var _url = OAUTHURL + 'scope=' + SCOPE + '&client_id=' + CLIENTID + '&redirect_uri=' + REDIRECT + '&response_type=' + TYPE;

        var win = window.open(_url, "Google Login", "width=500,height=600");
        var pollTimer = window.setInterval(function () {
            var popupurl = win.document.URL;
            if (popupurl.indexOf(REDIRECT) != -1) {
                window.clearInterval(pollTimer);
                var url = win.document.URL;
                var access_token = getQueryVariable("access_token", url);
                win.close();
                login.getClientDetail(access_token).then(function (promise) {
                    var response = promise.data;
                    var obj = {
                        emailId: response.email,
                        profileName: response.name,
                        experience: '',
                        profileDesc: '',
                        education: ''
                    }
                    loginImageUrl(response.picture);
                    login.addTaskProvider(obj).then(function (promise) {
                        if (promise.data > 0) {
                            cookieBase.SetCookieInDays('login', promise.data, 1);
                            $location.path('/post-task');
                        } else {
                            alert('login failed. please try again.')
                        }
                    })
                })
            }
        }, 500);
    }

    function getQueryVariable(name, url) {
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regexS = "[\\#&]" + name + "=([^&#]*)";
        var regex = new RegExp(regexS);
        var results = regex.exec(url);
        if (results == null)
            return "";
        else
            return results[1];
    }


    function loginImageUrl(imageUrl) {
        cookieBase.SetCookie('loginImgUrl', imageUrl);
    }

}])


var cookieBase = {
    SetCookie: function (cookieName, cookieValue) {
        document.cookie = cookieName + "=" + cookieValue + '; path =/';
    },
    SetCookieInDays: function (cookieName, cookieValue, nDays) {
        var today = new Date();
        var expire = new Date();
        expire.setTime(today.getTime() + 3600000 * 24 * nDays);
        document.cookie = cookieName + "=" + cookieValue + ";expires=" + expire.toGMTString() + '; path =/';
    },
    getCookie: function (cookieName) {
        var keyValue = document.cookie.match('(^|;) ?' + cookieName + '=([^;]*)(;|$)');
        return keyValue ? keyValue[2] : null;
    },
    deleteCookie: function (name) {
        document.cookie = name + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
    }
}

app.controller('browseTaskCtrl', ['$scope', 'masterData', 'task', '$stateParams',
    function ($scope, masterData, task, $stateParams) {
        var masterData = new masterData();
        var task = new task();
        var categoryId = $stateParams.categoryId;

        $scope.subCategoryById = function (categoryId) {
            task.browseTask(categoryId).then(function (promise) {
                $scope.categoryDetail = promise.data.catDetail;
                $scope.subCatDetail = promise.data.subcatDetail;
            })
        }

        masterData.getCategories().then(function (promise) {
            $scope.categories = promise.data;
            $scope.subCategoryById(promise.data[0].TaskCategoryID);
            if (categoryId) {
                $scope.subCategoryById(categoryId);
            } else {
                $scope.subCategoryById(promise.data[0].TaskCategoryID);
            }
        })
    }
])

app.controller('browseCategoryCtrl', ['$scope', '$location', '$anchorScroll', 'masterData', '$stateParams',
    function ($scope, $location, $anchorScroll, masterData, $stateParams) {
        var masterData = new masterData();
        var categoryId = $stateParams.categoryId;
        $scope.scrollTo = function (scrollLocation) {
            $location.hash(scrollLocation);
            $anchorScroll();
        }
        masterData.getCategories().then(function (promise) {
            $scope.categories = promise.data;
        })
    }
]);

// accordionCtrl controller code start here
app.controller('accordionCtrl', function ($scope) {
    $scope.oneAtATime = true;
    $scope.groups = [{
        title: 'Dynamic Group Header - 1',
        content: 'Dynamic Group Body - 1'
    }, {
        title: 'Dynamic Group Header - 2',
        content: 'Dynamic Group Body - 2'
    }, {
        title: 'Dynamic Group Header - 3',
        content: 'Dynamic Group Body - 3'
    }, {
        title: 'Dynamic Group Header - 4',
        content: 'Dynamic Group Body - 4'
    }];
});
// CarouselCtrl controller code start here
app.controller('carouselCtrl', function ($scope, $http) {
    $scope.myInterval = 5000;
    $http.get(jsonData).then(function (response) {
        $scope.slides = response.data.browseCategory.browseTaskGallery;
    })
}).controller('categoriesCtr', ['masterData', function (masterData) {
    var masterData = new masterData();

    var taskCategoryData = this;

    taskCategoryData.getSubCategories = function (categoryId, isactive) {
        masterData.getSubCategories(categoryId, isactive).then(function (promise) {
            taskCategoryData.subcategories = promise.data;
        })
    }

    taskCategoryData.getCategories = function (isactive) {
        masterData.getCategories(isactive).then(function (promise) {
            taskCategoryData.categories = promise.data;
            // taskCategoryData.subCategoryById(promise.data[0].TaskCategoryID);
            // if (categoryId) {
            //     taskCategoryData.subCategoryById(categoryId);
            // } else {
            //     taskCategoryData.subCategoryById(promise.data[0].TaskCategoryID);
            // }
        })
    }
}]).controller('browseTaskersCtrl', function (masterData) {
    var browseTaskerCt = this;
    var masterData = new masterData();

    masterData.gettaskers().then(function (promise) {
        browseTaskerCt.getTaskersList = promise.data;
    })


}).controller('browseTaskerLancerCtrl', function (masterData) {
    var browseTaskLancerCt = this;
    var masterData = new masterData();

    masterData.gettasklancers().then(function (promise) {
        browseTaskLancerCt.tasklancerList = promise.data;
    })
}).controller('recommendedTaskerCtrl', ['login', '$stateParams', function (login, $stateParams) {
    var recommendedTaskerCt = this;

    var login = new login();
    login.getRecommendedTasker($stateParams.projectId).then(function (promise) {
        recommendedTaskerCt.getRecommendedTaskers = promise.data.taskerlist;
        recommendedTaskerCt.subCatName = promise.data.subCatName;
    })

    recommendedTaskerCt.sendEmailToTasker = function (taskerId) {
        login.sendTaskerNotification(taskerId, $stateParams.projectId).then(function (promise) {
            alert(promise.data.result);
        })
    }
}]).controller('donorloginCtrl', ['login', function (login) {
    var login = new login();

    var donorCt = this;

    donorCt.addDonor = function () {
        login.addDonor(donorCt.obj).then(function (promise) {
            alert("donor added successfully.")
        })
    }
}]).controller('taskerVerifyCtrl', ['login', '$stateParams', function (login, $stateParams) {
    var login = new login();
    var taskerVerifyCt = this;

    login.verifyTasker($stateParams.taskerId).then(function (promise) {
        taskerVerifyCt.isVerified = promise.data.result;
    });
}])
