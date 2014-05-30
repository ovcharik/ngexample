module.exports = (grunt) ->
  
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    jade:
      app:
        options:
          pretty: true
          client: false
        files:
          'public/index.html': 'jade/layout.jade'
    
    coffee:
      app:
        expand: true
        flatten: false
        cwd: 'coffee'
        src: ['**/*.coffee']
        dest: 'public/js'
        ext: '.js'
    
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
  
  grunt.registerTask 'default', ['coffee', 'jade']
  grunt.registerTask 'mywatch', ['coffee', 'jade', 'watch']
