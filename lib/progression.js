/**
 * @constructor
 * @author Todd Treece
 * @this {progression}
 * @param {string} key of progression i.e. C#
 * @param {string} comma separated progression i.e. II,V,I or I,VI,II,V
 */
exports.progression = function(k,p) {
  
  this.c = require('./chord.js');
  this.osc = require('osc');

  this.roots = {
    'C':  60,
    'C#': 61,
    'Db': 61,
    'D':  62,
    'D#': 63,
    'Eb': 63,
    'E':  64,
    'F':  65,
    'F#': 66,
    'Gb': 66,
    'G':  67,
    'G#': 68,
    'Ab': 68,
    'A':  69,
    'A#': 70,
    'Bb': 70,
    'B':  71
  };
 
  this.chord_intervals = {
    'I':   [0,4,7,11],
    'II':  [2,5,9,12],
    'III': [4,7,11,14],
    'IV':  [5,9,12,16],
    'V':   [7,11,14,17],
    'VI':  [9,12,16,19],
    'VII': [11,14,17,21]
  };
  
  this.melody_intervals = {
    'I':   [0,4,7,11],
    'II':  [2,5,9,12],
    'III': [4,7,11,14],
    'IV':  [5,9,12,16],
    'V':   [7,8,10,11,13,15,17],
    'VI':  [9,12,16,19],
    'VII': [11,14,17,21]
  };

  this.root = this.roots[k];
  this.sequence = p.split(',');
  this.position = 0;
  this.last_chord;
  this.current_chord = new this.c.chord(this.root, this.chord_intervals[this.sequence[this.position]]);
  this.current_melody = new this.c.chord(this.root, this.melody_intervals[this.sequence[this.position]]);

  this.advance = function() {
    this.position++;

    if(this.position == this.sequence.length)
      this.position = 0;
    
    console.log(this.sequence[this.position]);
    this.current_chord = new this.c.chord(this.root, this.chord_intervals[this.sequence[this.position]]);
    this.current_melody = new this.c.chord(this.root, this.chord_intervals[this.sequence[this.position]]);
    
    if(this.last_chord == undefined)
      return false;

    var c = this.last_chord;
    var msg = new this.osc.Message('/blode/chord/off');

    for(var i=0; i < c.length; i++) {
      msg.append(c[i]);
    }

    return msg;

  };

  this.chord = function() {
    var c = this.current_chord.getChord();
    var msg = new this.osc.Message('/blode/chord/on');

    for(var i=0; i < c.length; i++) {
      msg.append(c[i]);
    }

    this.last_chord = c;

    return msg;
  };

  this.melody = function() {
    var m = this.current_melody.getMelodyNote();
    var msg = new this.osc.Message('/blode/melody');
        msg.append(m);

    return msg;
  };

  this.bass = function() {
    var b = this.current_chord.getBassNote();
    var msg = new this.osc.Message('/blode/bass');
        msg.append(b);

    return msg;

  };

};
