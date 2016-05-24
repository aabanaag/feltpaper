/*
 * AUTHOR: Alexis A. Banaag Jr.
 * DATE: May 24, 2016
 *
*/

var gulp = require('gulp');
var gutil = require('gulp-util');
var coffee = require('gulp-coffee');
var connect = require('gulp-connect');
var sass = require('gulp-sass');
var bower = require('main-bower-files');

var path = {
  scripts: './src/**/*.coffee',
  styles: './src/**/*.scss',
  html: './src/**/*.html',
  components: './components/**/*.js'
}

//GULP TASK
gulp.task('script', function () {
  return gulp.src(path.scripts)
  .pipe(coffee({
    bare: true
  }).on('error', gutil.log))
  .pipe(gulp.dest('./dist/js'))
  .pipe(connect.reload())
});

gulp.task('style', function () {
  return gulp.src(path.styles)
  .pipe(sass().on('error', sass.logError))
  .pipe(gulp.dest('./dist'))
  .pipe(connect.reload())
});

gulp.task('html', function () {
  return gulp.src(path.html)
  .pipe(gulp.dest('./dist'))
  .pipe(connect.reload())
})

gulp.task('watch', function () {
  gulp.watch(path.scripts, ['script']);
  gulp.watch(path.styles, ['style']);
  gulp.watch(path.html, ['html'])
});

gulp.task('connect', function () {
  connect.server({
    root: 'dist',
    livereload: true
  });
});

gulp.task('bower', function () {
  return gulp.src(bower())
  .pipe(gulp.dest('./dist/vendor'))
});

gulp.task('default', ['connect', 'bower', 'script', 'style', 'html', 'watch']);
