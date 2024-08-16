// navbarToggle js code
function navbarToggle() {
    document.getElementById("nav").classList.toggle("show");
}

window.fbAsyncInit = function () {
    FB.init({
        appId: '1572617752773920',
        cookie: true,
        xfbml: true,
        version: 'v2.11'
    });

    FB.AppEvents.logPageView();

};

(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) { return; }
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

function checkLoginState() {
    FB.getLoginStatus(function (response) {
        FB.api(
            '/' + response.authResponse.userID + "?fields=id,name,email,cover,about,profile_pic",
            function (response) {
                debugger
                // Insert your code here
            }
        );
        //   statusChangeCallback(response);
    });
}


function RedirectConfig($rootScope, $state) { 
    function redirect(event, toState, params) { 
        window.scrollTo(0, 0);
        var redirectTo = toState.redirectTo; 
        redirectTo && (event.preventDefault(), 
        $state.go(redirectTo, params, { location: "replace" })) 
    } 
    $rootScope.$on("$stateChangeStart", redirect) 
} angular.module("ui.router.redirect", ["ui.router"]), 
RedirectConfig.$inject = ["$rootScope", "$state"], 
angular.module("ui.router.redirect").run(RedirectConfig);


// JavaScript Document
var app = angular.module('taskLance', ['ui.bootstrap', 'ui.router', 'ui.router.redirect',
    'angular-google-analytics', 'ui.router.metatags']);
// var jsonData = '/json/browse-category.json';
// for SEO title and description code start here
function runBlock($rootScope, MetaTags) {
    $rootScope.MetaTags = MetaTags;
}

function configure(UIRouterMetatagsProvider) {
    UIRouterMetatagsProvider
        //.setTitlePrefix('DecorFuel - ')
        .setTitleSuffix(' - TaskLance')
        .setDefaultTitle('TaskLance')
        .setDefaultDescription('description')
        .setDefaultKeywords('keywords')
        .setStaticProperties({
            'fb:app_id': 'your fb app id',
            'og:site_name': 'your site name'
        })
        .setOGURL(true);
}
app.config(['UIRouterMetatagsProvider', configure]);
app.run(['$rootScope', 'MetaTags', runBlock]);

// UI-route config code start here
app.config(['$stateProvider', '$urlRouterProvider', '$locationProvider', 'AnalyticsProvider', function ($stateProvider, $urlRouterProvider, $locationProvider, AnalyticsProvider) {
    $urlRouterProvider.otherwise('/home');
    // $urlRouterProvider.when('csr','browse-task/10')
    AnalyticsProvider.setAccount('UA-83255914-1');
    AnalyticsProvider.trackPages(true);
    AnalyticsProvider.setPageEvent('$stateChangeSuccess');
    $stateProvider
        .state('home', {
            url: '/home',
            templateUrl: 'templates/home.html'
        })
        .state('post-task', {
            url: '/post-task/:catId/:subCatId',
            templateUrl: 'templates/post-task.html',
            controller: 'postTaskCtrl as posttaskCt',
            
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
        
         /*
        .state('csrprojects', {
            url: '/csrprojects',
            redirectTo: 'browse-task',
            
            // redirectTo: '/browse-task/1',
            // controller: 'browseTaskCtrl'
        })
        */

        .state('taskers', {
            url: '/taskers/:taskerId',
            templateUrl: 'templates/taskers.html',
            controller: 'browseTaskersCtrl as browseTaskerCt'
        })
        .state('other-taskers', {
            url: '/othertaskers/:taskSubCatId',
            templateUrl: 'templates/other-taskers.html',
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
        .state('browseTaskCategory', {
            url: '/browseTaskCategory/:maskingname/',
            templateUrl: 'templates/browse-task-category.html',
            controller: "browseCategoryCtrl",
            metaTags: {
                title: 'browse task category',
                description: 'Welcome to browse task category',
                keywords: 'TaskLance',
                properties: {
                    'og:title': 'Browse Task Category page'
                }
            }
        })
        .state('How-it-works', {
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
            templateUrl: 'templates/taskerlogin.html',
            controller: 'taskerloginCtrl as taskerCt'
        })
        .state('recommended-tasker', {
            url: '/recommended-tasker/:projectId',
            templateUrl: 'templates/db-restore/task.html',
            controller: 'recommendedTaskerCtrl as recommendedTaskerCt'
        })
        .state('donorlogin', {
            url: '/donorlogin/',
            redirectTo: 'browse-task',
            // controller: 'donorloginCtrl as donorCt'
            // controllerAs: 'taskerCt'
        })
        .state('csr-services', {
            url: '/csr',
            redirectTo: 'browse-task',
            // templateUrl: 'templates/csr.html'
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
        .state('talentregister', {
            url: '/talentregister/',
            templateUrl: 'templates/talentregister.html',
            controller:"talentregisterCtrl as talentregisterCt"
        })
        .state('About-us', {
            url: '/about-us',
            templateUrl: 'templates/About-us.html'
        })
        .state('Contact-us', {
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
        .state('interested-tasker', {
            url: '/tasker/:taskerId/project/:projectId',
            templateUrl: 'templates/interested-tasker.html',
            controller: 'interestedTaskerCtrl as interestedTaskerCt'
        })
        .state('profile-view', {
            url: '/profile/:taskerId',
            templateUrl: 'templates/profile-view.html',
            controller: 'taskerProfileCtrl as taskerProfileCt',
            metaTags: {
                title: 'Profile View ',
                description: 'Welcome to TaskLance world',
                keywords: 'TaskLance',
                properties: {
                    'og:title': 'Profile View page'
                }
            }
        })
        .state('my-task', {
            url: '/my-task',
            templateUrl: 'templates/my-task.html',
            metaTags: {
                title: 'My Task ',
                description: 'Welcome to TaskLance world',
                keywords: 'TaskLance',
                properties: {
                    'og:title': 'My Task page'
                }
            }
        })
        .state('my-task-brief', {
            url: '/my-task-brief',
            templateUrl: 'templates/my-task-brief.html',
            metaTags: {
                title: 'My Task Brief ',
                description: 'Welcome to TaskLance world',
                keywords: 'TaskLance',
                properties: {
                    'og:title': 'My Task Brief page'
                }
            }
        })
        .state('tasker-verification', {
            url: '/tasker-verification/:taskerId/',
            templateUrl: 'templates/tasker-verification.html',
            controller: 'taskerVerifyCtrl as taskerVerifyCt'
        });
    $locationProvider.html5Mode(true);
}]);

app.run(['Analytics', function (Analytics) { }]);
