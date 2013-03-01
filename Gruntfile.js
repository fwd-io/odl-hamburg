module.exports = function(grunt) {

  grunt.initConfig({
    uglify: {
        dist: {
            files: {
                'out/main.js': ['out/js/twitter.js', 'out/js/vendor/jquery-1-8-3-min.js', 'out/js/vendor/modernizr.js']
            }
        }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-uglify');

  // Default task.
  grunt.registerTask('default', ['uglify']);
};