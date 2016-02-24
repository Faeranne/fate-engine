gulp = require 'gulp'
coffee = require 'gulp-coffee'
sourcemaps = require 'gulp-sourcemaps'

gulp.task 'coffee', ->
	gulp.src 'src/**/*.coffee'
		.pipe sourcemaps.init()
		.pipe coffee()
		.pipe sourcemaps.write()
		.pipe gulp.dest 'build/'
