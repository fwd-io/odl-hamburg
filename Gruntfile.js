module.exports = function(grunt) {

  grunt.initConfig({
    uglify: {
        dist: {
            files: {
                'out/main.js': ['out/js/twitter.js', 'out/js/vendor/jquery-1-8-3-min.js', 'out/js/vendor/modernizr.js']
            }
        }
    },

    cssmin: {
        compress: {
            files: {
                'out/main.css': ['out/assets/css/styles.css', 'out/assets/css/normalize.css', 'out/assets/css/fonts.css']
            }
        }
    },

    clean: {
        after: ['out/js/', 'out/assets/css'],
        before: ['out/main.js', 'out/main.css']
    }
  });

  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-cssmin');

  // Default task.
  grunt.registerTask('default', ['clean:before', 'uglify', 'cssmin', 'clean:after']);
};