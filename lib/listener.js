var socket = new require('net').Socket(),
    util = require('util'),
    EventEmitter = require('events').EventEmitter;

module.exports = function() {

  var listener = {

    buffer: '',

    blode : {
      ip: '10.10.10.2',
      port: 8001,
      levels: ['info']
    },

    connect: function() {

      socket.connect(this.blode.port, this.blode.ip, this.setup.bind(this));

      return this;

    },

    setup: function() {

      socket.setEncoding('utf8');
      socket.write(JSON.stringify(['info']) + '\r\n');

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
        this.emit('bass');

      if(message.event == 'product.view')
        this.emit('melody');

      if(message.event == 'session.auth.attempt')
        this.emit('chord');

    }

  };

  util.inherits(listener, EventEmitter);

  return listener.connect();

};

