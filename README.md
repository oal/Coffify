Coffify - Grunt / CoffeeScript / Browserify base project
========================================================

This is a small base project set up with Grunt / CoffeeScript and Browserify.

It will watch all `.coffee` files in `src/` recursively, and build the project when files change. Browserify starts from `main.js`, but you can change that in `Gruntfile.coffee`.

All `.coffee` files will first be built in the `build/` directory, with the same names and directories as present in `src/`. Then Browserify starts from `build/main.js`, and follows the imports from there. The output is stored in `dist/dist.js`. After that, `uglify` is run, and outputs a minified file in `dist/dist.min.js`.

To get started, modify the project name in `package.json`, run `npm install`, and start grunt with `grunt watch` to automatically rebuild when changes are detected.