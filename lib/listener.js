var socket = new require('net').Socket(),
    util = require('util'),
    EventEmitter = require('events').EventEmitter;

module.exports = function() {

  var listener = {

    buffer: '',
    levels: ['info'],
    event: new EventEmitter(),

    connect: function(host, port) {
      socket.connect(port, host, this.setup.bind(this));
    },

    setup: function() {

      socket.setEncoding('utf8');
      socket.write(JSON.stringify(this.levels) + '\r\n');

      socket.on('data', this.parse.bind(this));

    },

    parse: function(data) {

      this.buffer += data;

      var line = this.buffer.indexOf('\r');

      while(line !== -1) {

        var raw = this.buffer.slice(0, line);

        try {
          this.process(JSON.parse(raw).message);
        } catch(e) {
          console.log(e);
        }

        this.buffer = this.buffer.slice(line + 1);
        line = this.buffer.indexOf('\r');

      }

    },

    process: function(message) {

      if(message.event == 'order.geocode' || message.event == 'shipment.geocode')
        this.event.emit('bass');

      if(message.event == 'product.view')
        this.event.emit('solo');

      if(message.event == 'session.auth.attempt')
        this.event.emit('chord');

    }

  };

  return listener;

};

process.on('SIGINT', function() {
  console.log('Closing blode socket');
  socket.end();
});

