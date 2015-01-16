[![Build Status](https://travis-ci.org/tandrewnichols/grunt-simple-grunt.png)](https://travis-ci.org/tandrewnichols/grunt-simple-grunt) [![downloads](http://img.shields.io/npm/dm/grunt-simple-grunt.svg)](https://npmjs.org/package/grunt-simple-grunt) [![npm](http://img.shields.io/npm/v/grunt-simple-grunt.svg)](https://npmjs.org/package/grunt-simple-grunt) [![Code Climate](https://codeclimate.com/github/tandrewnichols/grunt-simple-grunt/badges/gpa.svg)](https://codeclimate.com/github/tandrewnichols/grunt-simple-grunt) [![Test Coverage](https://codeclimate.com/github/tandrewnichols/grunt-simple-grunt/badges/coverage.svg)](https://codeclimate.com/github/tandrewnichols/grunt-simple-grunt) [![dependencies](https://david-dm.org/tandrewnichols/grunt-simple-grunt.png)](https://david-dm.org/tandrewnichols/grunt-simple-grunt)

[![NPM info](https://nodei.co/npm/grunt-simple-grunt.png?downloads=true)](https://nodei.co/npm/grunt-simple-grunt.png?downloads=true)

# grunt-simple-grunt

A grunt wrapper to register alias tasks that use flags

## Getting Started

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```bash
npm install grunt-simple-grunt --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with:

```javascript
grunt.loadNpmTasks('grunt-simple-grunt');
```

Alternatively, install and use [task-master](https://github.com/tandrewnichols/task-master), and it will handle this for you.

## The "grunt" task

That's right - this is a grunt task for "grunt." I created this because I needed to alias other tasks that used flags (e.g. `grunt foo:bar --some-flag`), and grunt doesn't provide a mechanism for that. And since I'd previously written [simple-cli](https://github.com/tandrewnichols/simple-cli), which makes gruntifying cli tools easy, I knew it would be quick to make this wrapper.

### Overview

The `grunt` task is a multiTask, where the target is the grunt command to run. You can configure as many commands as are useful to you either in your `grunt.initConfig` call or, as mentioned above, by using [task-master](https://github.com/tandrewnichols/task-master). I strongly recommend using task-master. It provides a nice separation of concerns with grunt configuration. The worst thing abour grunt is the long, messy Gruntfile configuration.

Here is a sample configuration for this task:

```javascript
grunt.initConfig({
  grunt: {
    'foo:bar': {
      options: { 
        someFlag: true
      }
    }
  }
});
```

You can supply options and do a lot of other cool things because of [simple-cli](https://github.com/tandrewnichols/simple-cli), but the tl;dr version is that any command line argument can be passed in "options" using a camel-cased version.
