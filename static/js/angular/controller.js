
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

app.controller('howItWorksCtrl', ['$scope', '$location', '$anchorScroll', function ($scope, $location, $anchorScroll) {
    $scope.scrollTo = function (scrollLocation) {
        $location.hash(scrollLocation);
        $anchorScroll();
    }
}])

// Global Tooltip with UIB code start here
app.controller('uibTooltip', ['$scope', '$sce', function ($scope, $sce) {
    $scope.placement = {
        options: ['top', 'top-left', 'top-right', 'bottom', 'bottom-left', 'bottom-right', 'left', 'left-top', 'left-bottom', 'right', 'right-top', 'right-bottom'],
        selected: 'top'
    };
}]);


app.controller('postTaskCtrl', ['$scope', 'masterData', 'task', 'myService',
    '$location', "$stateParams", function ($scope, masterData, task, taskData, $location, $stateParams) {
        var posttaskCt = this;

        var masterData = new masterData();
        var tsk = new task();
        posttaskCt.skills = [];
        posttaskCt.newSkill = "";
        posttaskCt.files = [];
        if (taskData.get() instanceof FormData) {
            var data = taskData.get();
            data.append('taskProviderId', cookieBase.getCookie('login'))
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

        // posttaskCt.getSubCategories = function () {
        //     // if ($scope.obj.categoryId == '5') {
        //     //     document.getElementById('partner-div').style.display = 'block';
        //     // } else {
        //     //     document.getElementById('partner-div').style.display = 'none';
        //     // }
        //     if (posttaskCt.obj.categoryId) {
        //         masterData.getSubCategories(posttaskCt.obj.categoryId, '1').then(function (promise) {
        //             posttaskCt.subcategories = promise.data;
        //             debugger
        //             // posttaskCt.obj.subCategoryId = $stateParams.subCatId;
        //         })
        //     } else {
        //         posttaskCt.subcategories = null;
        //         posttaskCt.obj.subCategoryId = "";
        //     }
        // }

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

        posttaskCt.getSubCategories = function (categoryId, isactive) {
            if (posttaskCt.obj.categoryId) {
                masterData.getSubCategories(categoryId, isactive).then(function (promise) {
                    posttaskCt.subcategories = promise.data;
                    console.log($stateParams)
                    if ($stateParams.hasOwnProperty("subCatId")) {
                        posttaskCt.obj.subCategoryId = $stateParams.subCatId;
                        posttaskCt.selectAdUrl();
                    }
                })
            } else {
                posttaskCt.subcategories = null;
                posttaskCt.obj.subCategoryId = "";
            }
        }


        posttaskCt.getCategories = function () {
            masterData.getCategories('1').then(function (promise) {
                posttaskCt.categories = promise.data;
                if ($stateParams.hasOwnProperty("catId")) {
                    posttaskCt.obj = {};
                    posttaskCt.obj.categoryId = $stateParams.catId;
                    posttaskCt.getSubCategories(posttaskCt.obj.categoryId, '1');
                    // posttaskCt.obj.subCategoryId = $stateParams.subCatId;
                }
            });
        }
        posttaskCt.getCategories();

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

            for (var i in posttaskCt.files) {
                data.append('uploadedFile', posttaskCt.files[i])
            }
            data.append('taskTitle', posttaskCt.obj.taskTitle);
            data.append('subCategoryId', posttaskCt.obj.subCategoryId);

            data.append('taskDesc', posttaskCt.obj.taskDesc);
            data.append('budget', posttaskCt.obj.budget);

            taskData.set(data);
            // posttaskCt.obj.taskProviderId = cookieBase.getCookie('login');
            var cookie = cookieBase.getCookie('login')
            if (cookie) {
                data.append('taskProviderId', cookieBase.getCookie('login'));
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

app.controller('browseTaskCtrl', ['$scope', 'masterData', 'task', '$stateParams', function ($scope, masterData, task, $stateParams) {
    debugger
    var masterData = new masterData();
    var task = new task();
    var categoryId = $stateParams.categoryId;

    $scope.subCategoryById = function (categoryId) {
        task.browseTask(categoryId).then(function (promise) {
            debugger
            console.log(promise.data.subcatDetail)
            $scope.categoryDetail = promise.data.catDetail;
            $scope.subCatDetail = promise.data.subcatDetail;
        })
    }

    masterData.getCategories().then(function (promise) {
        $scope.categories = promise.data;
        debugger
        $scope.subCategoryById(promise.data[0].TaskCategoryID);
        if (categoryId) {
            $scope.subCategoryById(categoryId);
        } else {
            $scope.subCategoryById(promise.data[0].TaskCategoryID);
        }
    })
}])

app.controller('browseCategoryCtrl', ['$scope', '$location', '$anchorScroll', 'masterData', '$stateParams', '$sce', function ($scope, $location, $anchorScroll, masterData, $stateParams, $sce) {
    // var browseCategoryCt = this;
    var masterData = new masterData();
    $scope.hideTasker = false;
    $scope.myInterval = 1000;
    // console.log($stateParams)
    $scope.maskingname = $stateParams.maskingname;
    $scope.scrollTo = function (scrollLocation) {
        $location.hash(scrollLocation);
        $anchorScroll();
    }
    masterData.getCategories().then(function (promise) {
        $scope.categories = promise.data;
    })

    // getCategoryBySubCatId

    masterData.getCategoryBySubCatId($scope.maskingname).then(function (promise) {
        // console.log(promise.data[0].TaskCategoryID)
        $scope.catId = promise.data[0].TaskCategoryID;
    })
    masterData.getSubCategoryDetail($scope.maskingname).then(function (promise) {
        console.log(promise.data)
        $scope.subCatDetail = promise.data[0][0];
        debugger
        $scope.slides = promise.data[1];
        $scope.taskDesc = $sce.trustAsHtml($scope.subCatDetail.taskdesc);
        $scope.getTaskRate($scope.subCatDetail.TaskSubCategoryID);
        if (promise.data[2][0].hasOwnProperty('NULL')) {
            $scope.hideTasker = false;
        } else {
            debugger
            $scope.taskerData = promise.data[2];
            $scope.taskerDetail = promise.data[3][0];
            $scope.TaskSubCategoryID = $scope.subCatDetail.TaskSubCategoryID;
            $scope.hideTasker = true;
        }
    });

    $scope.getTaskRate = function(subCat){
        masterData.getTaskRate(subCat).then(function(res){
            $scope.rate = res.data;
            debugger;
            // res.data.Dailyrate
            // 3744
            // res.data.Weeklyrate
            // 16380
            // res.data.Monthlyrate
            // 61776
        })
    } 
}]);

// accordionCtrl controller code start here
app.controller('accordionCtrl', ['$scope', function ($scope) {
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
}]);
// CarouselCtrl controller code start here
app.controller('carouselCtrl', ['$scope', '$http', function ($scope, $http) {
    $scope.myInterval = 5000;
    // $http.get(jsonData).then(function (response) {
    //     $scope.slides = response.data.browseCategory.browseTaskGallery;
    // })
}]);

app.controller('categoriesCtr', ['masterData', function (masterData) {
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
        })
    }
}]);

app.controller('browseTaskersCtrl', ['masterData', 'login', '$stateParams', function (masterData, login, $stateParams) {
    var browseTaskerCt = this;
    var masterData = new masterData();
    var login = new login();
    if ($stateParams.hasOwnProperty("taskSubCatId")) {
        login.getOtherTasker($stateParams.taskSubCatId).then(function(promise){
            debugger
            browseTaskerCt.getTaskersList = promise.data.result[0];
        })
    } else {
        masterData.gettaskers().then(function (promise) {
            browseTaskerCt.getTaskersList = promise.data;
        })
    }
}]);

app.controller('browseTaskerLancerCtrl', ['masterData', function (masterData) {
    var browseTaskLancerCt = this;
    var masterData = new masterData();

    masterData.gettasklancers().then(function (promise) {
        browseTaskLancerCt.tasklancerList = promise.data;
    })
}]);

app.controller('recommendedTaskerCtrl', ['login', '$stateParams', function (login, $stateParams) {
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
}]);

app.controller('donorloginCtrl', ['login', function (login) {
    var login = new login();

    var donorCt = this;

    donorCt.addDonor = function () {
        login.addDonor(donorCt.obj).then(function (promise) {
            alert("donor added successfully.")
        })
    }
}]);

app.controller('interestedTaskerCtrl', ['login', '$stateParams', function (login, $stateParams) {
    var login = new login();
    var interestedTaskerCt = this;
    login.interestedTasker($stateParams.taskerId, $stateParams.projectId).then(function (response) {
        if (response.data.result == true) {
            interestedTaskerCt.msg = "Tasker Provider notified for your task acceptance."
        } else {
            interestedTaskerCt.msg = "Sorry. Already got so many responses"
        }
    })
}])

// profile view code start here 
app.controller('TabsDemoCtrl', ['$scope', '$window', function ($scope, $window) {
    // controll your tabs data calling here... 
}]);

app.controller('taskerVerifyCtrl', ['login', '$stateParams', function (login, $stateParams) {
    var login = new login();
    var taskerVerifyCt = this;

    login.verifyTasker($stateParams.taskerId).then(function (promise) {
        taskerVerifyCt.isVerified = promise.data.result;
    });
}]);

app.controller('taskerProfileCtrl', ['login', '$stateParams', function (login, $stateParams) {
    var taskerProfileCt = this;
    var login = new login();
    var taskerId = $stateParams.taskerId;


    login.getTaskerDetail(taskerId).then(function (promise) {
        taskerProfileCt.taskerDetail = promise.data.result;
    });
}])

app.controller('homeCarousel', ['$scope', function ($scope) {
    $(".homeCarousel").slick({
        //dots: true,
        infinite: true,
        slidesToShow: 5,
        slidesToScroll: 2,
        speed: 1000,
        centerPadding: '10px',
        responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 3
            }
        },
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 3
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 2
            }
        }
        ]
    });
}]);

app.controller('talentregisterCtrl',[function(){
    let talentregisterCt = this;
    talentregisterCt.isFormVisible = true;
}])