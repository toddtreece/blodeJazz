var p = require('./lib/progression.js');
var b = require('./lib/blodeJazz.js');

var progression = new p.progression('C','II,V,I');
var jazz = new b.blodeJazz(progression);

jazz.init();
