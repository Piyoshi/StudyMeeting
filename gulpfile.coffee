gulp = require 'gulp'
webserver = require 'gulp-webserver'

gulp.task 'server', ->
    gulp.src './'
        .pipe webserver {
            livereload: true
            directoryListing: true
            port: 8080
        }
