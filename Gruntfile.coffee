module.exports = (grunt) ->
	grunt.initConfig
		pkg: grunt.file.readJSON('package.json')
		watch:
			scripts:
				files: 'src/**/*.coffee'
				tasks: ['default']
				options:
					interrupt: yes
		coffee:
			options:
				bare: yes
			glob_to_multiple:
				expand: true,
				cwd: 'src'
				src: ['**/*.coffee']
				dest: 'build/'
				ext: '.js'

		shell:
			browserify:
				command: 'browserify build/main.js -o dist/dist.js'
				options:
					stdout: true
					stderr: true
					failOnError: true

		uglify:
			build: 
				src: 'dist/dist.js'
				dest: 'dist/dist.min.js'


	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-shell')
	grunt.loadNpmTasks('grunt-contrib-uglify')

	grunt.registerTask 'default', ['coffee', 'shell', 'uglify']
	


