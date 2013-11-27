# blodeJazz

Blode is a Node.js daemon that runs on one of [SparkFun](https://sparkfun.com)'s web servers and allows developers to broadcast syslog style events to an arbitrary amount of TCP or WebSocket connected clients. Events can be pushed as JSON from any TCP, UDP, or HTTP connection to the blode listener, which then rebroadcasts the event to all of the connected clients.

blodeJazz is a [node.js](http://nodejs.org) blode client that parses the stream of events sent from sparkfun.com's web servers and turns those events into MIDI note on messages in the key of a jazz chord progression. These MIDI messages are sent through a virtual MIDI port to a software synth for playback.

There are three type of events that blodeJazz currently listens to:

* Product View - plays melody note on MIDI channel 2
* New Order - plays bass note on MIDI channel 3
* Login Attempt - moves the selected chord progression one step forward, and plays the new chord on MIDI channel 1

## Installing

You will need a recent install of [node.js](http://nodejs.org) *(0.10.22+)*, and a software synth that will receive the MIDI notes and convert them to sound.

````bash
$ git clone https://github.com/toddtreece/blodeJazz.git
$ cd blodeJazz
$ npm install
$ ./jazz C II,V,I
````
As you can see above, the ````jazz```` executable accepts two arguments: the musical key, and the chord progression.  Once you launch it, a virtual MIDI port will be created called ````blodeJazz````.

## Modifying

The blode events are defined in ````lib/listener.js```` in a method called ````process````.  The current set of blode events that the listener watches for are specific to SparkFun, but you can easily change them to fit your needs.  The ````jazz```` excecutable contains the event listeners that trigger the MIDI notes and chord advancement methods found in ````lib/progression.js````.

