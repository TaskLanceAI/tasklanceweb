
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
});

app.directive('errSrc', function () {
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
});

app.directive('setInitials', function () {
    return {
        link: function (scope, element, attrs) {
            var matches = attrs.getInitials.match(/\b(\w)/g); // ['J','S','O','N']
            var acronym = matches.join('');
            $(element).text(acronym.toUpperCase());
        }
    }
});