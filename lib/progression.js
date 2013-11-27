var chord = require('./chord.js'),
    midi = require('midi'),
    output = new midi.output();

module.exports = function(root, sequence) {

  // open new midi port
  output.openVirtualPort('blodeJazz');

  var progression = {

    root: 60,
    sequence: ['II', 'V', 'I'],
    position: 0,
    current: false,
    previous: false,
    melody: false,

    // midi mappings
    roots: {
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
    },

    // this are intervals relative to
    // the current root note
    intervals: {

      chord: {
        'I':   [0,4,7,11],
        'II':  [2,5,9,12],
        'III': [4,7,11,14],
        'IV':  [5,9,12,16],
        'V':   [7,11,14,17],
        'VI':  [9,12,16,19],
        'VII': [11,14,17,21]
      },

      melody: {
        'I':   [0,4,7,11],
        'II':  [2,5,9,12],
        'III': [4,7,11,14],
        'IV':  [5,9,12,16],
        'V':   [7,8,10,11,13,15,17],
        'VI':  [9,12,16,19],
        'VII': [11,14,17,21]
      }

    },

    randomVelocity: function(min, max) {

      var range = max - min,
          random = Math.floor(Math.random() * (range + 1));

      return min + random;

    },

    getInterval: function() {

      return this.sequence[this.position];

    },

    getChord: function() {

      var interval = this.getInterval();

      return new chord(this.root, this.intervals.chord[interval]);

    },

    getMelody: function() {

      var interval = this.getInterval();

      return new chord(this.root, this.intervals.melody[interval]);

    },

    advance: function() {

      this.position++;

      if(this.position == this.sequence.length)
        this.position = 0;

      console.log(this.getInterval());

      this.current = this.getChord();
      this.melody = this.getMelody();

      this.chordOff();

    },

    noteOn: function(channel, note, velocity) {

      output.sendMessage([143 + channel, note, velocity]);

    },

    noteOff: function(channel, note, velocity) {

      output.sendMessage([127 + channel, note, velocity]);

    },

    chord: function() {

      var chord = this.current.chord();

      for(var i = 0; i < chord.length; i++)
        this.noteOn(1, chord[i], this.randomVelocity(19, 100));

      this.previous = chord;

    },

    chordOff: function() {

      if(! this.previous)
        return;

      var chord = this.previous;

      for(var i = 0; i < chord.length; i++)
        this.noteOff(1, chord[i], 127);

    },

    solo: function() {

      var note = this.melody.melodyNote();

      this.noteOn(2, note, this.randomVelocity(2, 120));

      setTimeout((function() {

        this.noteOff(2, note, 127);

      }).bind(this), 6000);

    },

    bass: function() {

      var note = this.current.bassNote();

      this.noteOn(3, note, this.randomVelocity(38, 64));

      setTimeout((function() {

        this.noteOff(3, note, 127);

      }).bind(this), 6000);

    }

  };

  // init
  progression.root = progression.roots[root];
  progression.sequence = sequence.split(',');
  progression.current = progression.getChord();
  progression.melody = progression.getMelody();

  return progression;

};

process.on('SIGINT', function() {
  console.log('Closing MIDI port');
  output.closePort();
});
