var p = require('./lib/progression.js');
var b = require('./lib/blodeJazz.js');

var input_key = process.argv[2];
var input_progression = process.argv[3];
if(input_key == undefined || input_progression == undefined) {
  console.log('You must provide a key and progression');
  process.exit(0);
}
var progression = new p.progression(input_key,input_progression);
var jazz = new b.blodeJazz(progression);

jazz.init();
