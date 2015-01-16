var cli = require('simple-cli');

module.exports = function(grunt) {
  grunt.registerMultiTask('grunt', 'A grunt wrapper to register alias tasks that use flags', function() {
    cli.spawn(grunt, this, 'grunt', this.async());
  });
};
