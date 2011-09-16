/**
 * @constructor
 * @author Todd Treece
 * @this {Chord}
 * @param {number} root midi note
 * @param {Array.<number>} steps between chord notes
 */
function Chord(root_note,intervals) {

  this.intervals = intervals;
  
  this.key_octaves = new Array(0,12,24);
  this.bass_octaves = new Array(-24,-36);

  this.root = root_note;
  
  this.getChord = function() {
    var chord = new Array();
    var root_shifted = this.getKeyOctave();
    
    for(var i=0; i < this.intervals.length; i++) {
      chord.push(root_shifted + this.intervals[i]);
    }
    
    return chord;
  };

  this.getBassNote = function() {
    var random = Math.floor(Math.random() * this.intervals.length + 1) - 1;
    var root_shifted = this.getBassOctave();
    
    return root_shifted + this.intervals[random];
  };

  this.getMelodyNote = function() {
    var random = Math.floor(Math.random() * this.intervals.length + 1) - 1;
    var root_shifted = this.getKeyOctave();
    
    return root_shifted + this.intervals[random];
  };

  this.getKeyOctave = function() {
    var random = Math.floor(Math.random() * 3 + 1) - 1;
    return this.root + this.chord_octaves[random];
  };

  this.getBassOctave = function() {
    var random = Math.floor(Math.random() * 2 + 1) - 1;
    return this.root + this.bass_octaves[random];
  };
  
}
