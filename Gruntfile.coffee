module.exports = (grunt) ->
  
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    jade:
      app:
        options:
          pretty: true
          client: false
        files:
          'public/index.html': 'jade/develop.jade'
      pages:
        options:
          pretty: false
          client: false
        files:
          'index.html': 'jade/pages.jade'
    
    coffee:
      app:
        expand: true
        flatten: false
        cwd: 'coffee'
        src: ['**/*.coffee']
        dest: 'public/js'
        ext: '.js'
      pages:
        files:
          'build/index.js': [
            'coffee/directives/code_directive.coffee',
            'coffee/directives/directives.coffee',
            
            'coffee/controllers/home_controller.coffee',
            'coffee/controllers/todo_controller.coffee',
            'coffee/controllers/controllers.coffee',
            
            'coffee/app.coffee'
          ]
    
    concat:
      js:
        src: [
          'public/highlight/highlight.pack.js',
          'public/vendor/angular/angular.js',
          'public/vendor/angular-route/angular-route.js',
          'build/index.js'
        ]
        dest: 'pages/script.js'
      
      css:
        src: [
          'public/vendor/bootstrap/dist/css/bootstrap.min.css',
          'public/vendor/bootstrap/dist/css/bootstrap-theme.min.css',
          'public/highlight/github.css'
        ]
        dest: 'pages/stylesheet.css'
    
    clean:
      build: ['build/']
    
    watch:
      jade:
        files: 'jade/**/*.jade'
        tasks: 'jade'
      coffee:
        files: 'coffee/**/*.coffee'
        tasks: 'coffee'
  
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  
  grunt.registerTask 'default', ['coffee:app', 'jade:app']
  grunt.registerTask 'mywatch', ['default', 'watch']
  grunt.registerTask 'pages',   ['coffee:pages', 'jade:pages', 'concat', 'clean']
