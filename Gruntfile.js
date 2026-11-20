module.exports = function(grunt) {
	
	grunt.loadNpmTasks('grunt-screeps');

	var options = require('./.screeps.json');

	grunt.initConfig({
		screeps: {
			options: options,
			dist: {
				src: ['dist/*.js', 'dist/*.wasm']
			}
		}
	});
}
