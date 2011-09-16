/**
 * @constructor
 * @author Todd Treece
 * @this {BlodeJazz}
 * @param {Progression}
 */
function BlodeJazz(progression) {

  this.progression = progression;

  this.net = require('net');
  this.socket = null;
  this.osc = require('osc');

  this.blode_ip = '10.10.10.2';
  this.blode_port = 8001;

  this.osc_ip = '127.0.0.1';
  this.osc_port = 3333;

  this.osc_client = null;
  this.buffer = "";

  this.init = function() {

    this.socket = new this.net.Socket();

    this.osc_client = new osc.Client(this.osc_port, this.osc_ip);
    
    this.socket.connect(this.blode_port, this.blode_ip, function() {
  
      this.socket.setEncoding('utf8');
  
      this.socket.on('data', function(data) {

        this.buffer += data;
        
        var new_line = this.buffer.indexOf("\r");   
        
        if (new_line !== -1) {     
          var json = this.buffer.slice(0, new_line);
          
          try {  
            var blodeObject = JSON.parse(json);
          } catch(e) { }

          this.buffer = this.buffer.slice(new_line + 1);
        }

      });

    });

  };



}

