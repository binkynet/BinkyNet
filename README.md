# BinkyNet

BinkyNet is a specification for a network architecture used to control model trains.

The goals of this network architecture are:

- Knowledge of network layout & users is centralized.
- Highly reliable
- Faster than existing train networks such a LocoNet
- Easy to diagnose

## Introduction

BinkyNet consists of 3 major types of entities:

- The network master. This is a centralized unit that has all the knowledge of
  the layout & users of the network. Practically speaking this is one (or more) computers
  that control the operations of everything on the track (trains, switches, lighting...).
- The local worker. This is a unit that is positioned on a specific part of the track (typically 1 per module)
  and has the "brains" to control local slaves.
  This unit receives high level instructions from a network master and translates that to low level instructions
  for local slaves.
- The local slave. This is a unit with very little intelligence and it typically only capable of performing a single function.
  An example of a local slave is an I/O unit that drivers a number of lights or receives bit values from objects
  on the track.

These 3 entities are organized as a tree, with one or more network masters as root.

## Network technologies & protocols

BinkyNet uses existing & well proven network technologies whereever possible.

### Network master - local worker

The network master(s) and local workers are connected using a standard (100Mb+) wired ethernet, configured 
such that the network master and local workers under its control all share the same subnet.

The network master(s) and local workers exchange information (instructions & data) using the MQTT protocol.
The MQTT protocol provides various levels of quality of service, used to garantee delivery of messages.

Messages can be initiated by both the network master as well as the local worker, allthough the local worker will
only initiate messages after an initial setup by the network master.

### Local worker - local slave

A local worker is connected to its local slaves using a buffered I2C connection.
The additional buffering is done to allow for a cable length above 1 meter (up to 10 meter).

The local worker and local slaves exchange information that all specific to the implementation of the local slave.
