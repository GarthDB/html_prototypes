module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    stylus:
      compile:
        options:
          compress: false
        files:
          'css/main.css': 'css/main.styl'
          'css/reset.css': 'css/reset.styl'
    jade:
      options:
        pretty: true
      compile:
        files:
          'index.html': 'index.jade'
    coffee:
      compile:
        files:
          'js/main.js': 'js/main.coffee'
    watch:
      coffeeScripts:
        files: ['**/*.coffee']
        tasks: 'coffee'
      jadeScripts:
        files: ['**/*.jade']
        tasks: 'jade'
      stylusScripts:
        files: ['**/*.stylus']
        tasks: 'stylus'
    connect:
      server:
        port: 8080
        base: './'

  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-stylus')
  grunt.loadNpmTasks('grunt-contrib-jade')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-connect')

  # Default task(s).
  grunt.registerTask('default', ['coffee','stylus','jade'])
  grunt.registerTask('run', ['watch','connect'])