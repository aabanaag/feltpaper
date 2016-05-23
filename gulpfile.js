/*
 * AUTHOR: Alexis A. Banaag Jr.
 * DATE: May 24, 2016
 *
*/

var gulp = require('gulp');
var gutil = require('gulp-util');
var plugins = require('gulp-load-plugins')();

//GULP TASK
gulp.task('script', function () {
  return gulp.src('./src/**/*.coffee')
  .pipe(plugins.coffee({
    bare: true
  }).on('error', gutil.log))
  .pipe(gulp.dest('./dist/js'))
});

gulp.task('style', function () {
  return gulp.src('./src/**/*.scss')
  .pipe(plugins.sass().on('error', sass.logError))
  .pipe(gulp.des('./dist/css'))
});

gulp.task('default', ['script', 'style']);
