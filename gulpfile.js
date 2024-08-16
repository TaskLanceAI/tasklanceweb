var gulp = require('gulp');
var uglify = require('gulp-uglify');
var cssnano = require('gulp-cssnano');
var pump = require('pump');
var useref = require('gulp-useref');
var gulpif = require('gulp-if');
var imageop = require('gulp-image-optimization');
require('es6-promise').polyfill();

gulp.task('compress', function (cb) {
    pump([
        gulp.src('static/**/*.js'),
        uglify(),
        gulp.dest('dist')
    ],
        cb
    );
});

gulp.task('css-compress', function (cb) {
    pump([
        gulp.src('static/**/*.css'),
        cssnano(),
        gulp.dest('dist')
    ],
        cb
    );
});

var concat = require('gulp-concat');

gulp.task('scripts', function () {
    gulp.src(['static/js/jquery-3.1.1.min.js',
        'static/js/angular.min-1.5.8-uib-tpls-v2.1.0-ui-route.js',
        'static/js/angular-touch.min-v1.5.8.js',
        'static/js/angular-google-analytics.min.js',
        'static/js/ui-router-metatags.min.js',
        'static/js/slick.min.js',
        'static/js/angular/routing.js',
        'static/js/angular/factory.js',
        'static/js/angular/directive.js',
        'static/js/angular/service.js',
        'static/js/angular/controller.js'
    ])
        .pipe(concat('all.js'))
        .pipe(uglify())
        .pipe(gulp.dest('static/js'))
});

gulp.task('styles', function () {
    gulp.src(["static/css/bootstrap.min-v3.3.7.css",
        "static/css/slick.css",
        "static/css/style.css"
    ])
        .pipe(concat('all.css'))
        .pipe(cssnano())
        .pipe(gulp.dest('static/css'))
});

// gulp.task('images', function(cb) {
//     gulp.src(['temp/**/*.png'
//     ,'temp/**/*.jpg',
//     'temp/**/*.gif',
//     'temp/**/*.jpeg']).pipe(imageop({
//         optimizationLevel: 5,
//         progressive: true,
//         interlaced: true
//     })).pipe(gulp.dest('static/images')).on('end', cb).on('error', cb);
// });

const imagemin = require('gulp-imagemin');

gulp.task('default1', () =>
   gulp.src('temp/images/**')
       .pipe(imagemin())
       .pipe(gulp.dest('static/images'))
);

gulp.task('default', ['scripts', 'styles'])
