module.exports = function(root, intervals) {

  var chord = {

    octaves: {
      chord: [12, 0],
      melody: [-12, 0, 12, 24],
      bass: [-24,-36]
    },

    random: function(max) {
      return Math.floor(Math.random() * (max + 1)) - 1;
    },

    chord: function() {

      var c = [],
          octave = this.chordOctave();

      for(var i=0; i < intervals.length; i++)
        c.push(octave + intervals[i]);

      return c;

    },

    bassNote: function() {

      var random = this.random(intervals.length),
          octave = this.bassOctave();

      return octave + intervals[random];

    },

    melodyNote: function() {

      var random = this.random(intervals.length),
          octave = this.melodyOctave();

      return octave + intervals[random];

    },

    chordOctave: function() {

      var random = this.random(this.octaves.chord.length);

      return root + this.octaves.chord[random];

    },

    melodyOctave: function() {

      var random = this.random(this.octaves.melody.length);

      return root + this.octaves.melody[random];

    },

    bassOctave: function() {

      var random = this.random(this.octaves.bass.length);

      return root + this.octaves.bass[random];

    }

  };

  return chord;

};
