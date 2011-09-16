/**
 * @constructor
 * @author Todd Treece
 * @this {Progression}
 * @param {string} key of progression i.e. C#
 * @param {string} comma separated progression i.e. II,V,I or I,VI,II,V
 */
function Progression(key,progression) {
  
  this.roots = {
    'C':  60,
    'C#': 61,
    'Db': 61
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
  
  this.melody_intervals = this.chord_intervals;
  this.melody_intervals['V'] = [7,8,10,11,13,15,17];

  this.root = this.roots[key];
  this.sequence = progression.split(',');
  this.position = 0;
  this.current_chord = new Chord(this.root, this.chord_intervals[this.sequence[this.position]]);
  this.current_melody = new Chord(this.root, this.melody_intervals[this.sequence[this.position]]);

  this.advance = function() {
    this.position++;

    if(this.position == this.sequence.length)
      this.position = 0;
    
    this.current_chord = new Chord(this.root, this.chord_intervals[this.sequence[this.position]]);
    this.current_melody = new Chord(this.root, this.melody_intervals[this.sequence[this.position]]);

  };

  this.chord = function() {
    var c = this.current_chord.getChord();
    return '/blode chord ' + c.join(' ');
  };

  this.melody = function() {
    var m = this.current_melody.getMelodyNote();
    return '/blode melody ' + m;
  };

  this.bass = function() {
    var b = this.current_chord.getBassNote();
    return '/blode bass ' + b;
  };

}
