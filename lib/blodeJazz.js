/**
 * @constructor
 * @author Todd Treece
 * @this {blodeJazz}
 * @param {progression}
 */
exports.blodeJazz = function(p) {

  this.progression = p;

  this.net = require('net');
  this.socket = new this.net.Socket();
  this.osc = require('osc');

  this.blode_ip = '10.10.10.2';
  this.blode_port = 8001;

  this.osc_ip = '127.0.0.1';
  this.osc_port = 3333;

  this.osc_client = new this.osc.Client(this.osc_port, this.osc_ip);
  this.buffer = "";


  this.init = function() {
    var that = this;
    this.socket.connect(this.blode_port, this.blode_ip, function() {
  
      that.socket.setEncoding('utf8');
      var limit_level = new Array('info');
      that.socket.write(JSON.stringify(limit_level) + "\r\n");

      that.socket.on('data', function(data) {

        that.buffer += data;
        
        var new_line = that.buffer.indexOf("\r");   
        
        while(new_line !== -1) {     
          var json = that.buffer.slice(0, new_line);
          
          try {  
            var blodeObject = JSON.parse(json);
            that.parse(blodeObject);
          } catch(e) {console.log(e); }

          that.buffer = that.buffer.slice(new_line + 1);
          new_line = that.buffer.indexOf("\r");
        }

      });

    });

  };
    
  this.parse = function(json) {
      var message = json.message;
      if(message.event == "order.geocode") {
        var bass = this.progression.bass();
        this.osc_client.send(bass);
      } else if(message.event == "shipment.geocode") {
        var bass = this.progression.bass();
        this.osc_client.send(bass);
      } else if (message.product_viewed != undefined) {
        var melody = this.progression.melody();
        this.osc_client.send(melody);
      } else if (message.session_auth_attempt != undefined) {
        var last_off = this.progression.advance();
        var chord = this.progression.chord();
        
        if(last_off != false)
          this.osc_client.send(last_off);
        
        this.osc_client.send(chord);
      }
  };

};

