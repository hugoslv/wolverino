# Wolverino
Muscle-controlled fully automatic DiY X-Men Wolverine claws, which
deploy and retract using Electromyography (EMG) or Mechanomyography (MMG)
signals.

Here you'll find instructions on how to recreate our initial prototype
developed during Pixels Camp 2016 (check it out [here](https://www.youtube.com/watch?v=msZYemtDlfM))
with EMG-based control, built using the [littleBits](http://littlebits.cc/) and
[BITalino](http://bitalino.com/) platforms.

A second iteration based on the Arduino with MMG-based control has been created with the purpose of providing a low-cost and more compact alternative.

## What we've used for our builds
Between (a lot of) 3D printed parts, textiles, hardware and other
tools, its best to give this checkist a look prior to start building 
your very own Wolverino.

### Tools
[  ] 3D printer

[  ] Super glue

[  ] Small pliers

[  ] Sewing machine

[  ] Soldering iron

[  ] Solder

### Textile 
[  ] 100 cm of elastic strip (2.5 cm width)

[  ] 21 cm of velcro loop tape (2 cm width)

[  ] 10 cm of velcro hook tape (2 cm width)

[  ] 2 adjustable buckles (2.5 cm running space)


### 3D printed parts 
[  ] 1x Claw box for the [left](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawBox-LeftArm.scad) or [right](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawBox-RightArm.scad) arm

[  ] 1x Servo box for the
[left](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ServoBox-LeftArm.scad)
or
[right](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ServoBox-RightArm.scad)
arm

[  ] 3x [Claw](https://github.com/hugoslv/wolverino/blob/master/3d%20models/Claw.scad)

[  ] 1x [Claw holding
shaft](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawShaft.scad)

[  ] 2x [Claw
retainers](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawShaftLocks.scad)

[  ] 2x [Claw
spacers](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawSpacers.scad)

[  ] 2x [Arduino holding clip](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClipArduinoBit.scad)

[  ] 2x [Servo
brackets](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ServoBracket.scad)

[  ] 1x [Servo lever](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ServoLever.scad)

[  ] 4x [Armband bracket](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ArmbandBracket.scad)
 
### Hardware
[  ] Power bank with on/off button ([this
model](http://uk.rs-online.com/web/p/power-banks/7757504/) works
great)

[  ] USB to Micro (or Mini) USB cable ([preferrably retractable](http://www.dx.com/pt/p/retractable-usb-to-mini-usb-data-cable-74cm-length-22552#.WYMNZhRT7Ew))

[  ] Metal wire (like the one used for hanging picture frames)

[  ] Small metal nail

[  ] Blu tack (or equivalent)

#### for the littleBits variant
[  ] 1x [USB power](https://shop.littlebits.cc/products/usb-power)

[  ] 1x [Arduino Bit](https://shop.littlebits.cc/products/arduino-bit)

[  ] 1x [Servo](https://shop.littlebits.cc/products/servo)

[  ] 1x [Wire Bit](https://shop.littlebits.cc/products/wire-bit)

[  ] 1x [Proto Bit](https://shop.littlebits.cc/products/proto)

[  ] 1x [BITalino EMG Sensor](https://store.plux.info/bitalino-sensors/8-electromyography-emg-sensor.html)

[  ] 1x [BITalino
SnapBIT-TRIO](https://store.plux.info/breakout-boards/221-snapbit-delta.html)

[  ] 2x [PCB Header with Sherlock Plug Pitch](https://store.plux.info/handy-tools/248-1x4-pcb-header-with-sherlock-plug-pitch-810122931.html)

[  ] 1x [Non-Gelled Reusable Ag/AgCl Electrodes](https://store.plux.info/electrodes/60-non-gelled-reusable-agagcl-electrodes.html)

[  ] 1x [Bargraph](https://shop.littlebits.cc/products/bargraph)
(optional)

[  ] 1x [Dimmer Bit](https://shop.littlebits.cc/products/dimmer) (optional)

[  ] 1x [bitSnap](https://shop.littlebits.cc/products/bitsnaps) (optional)


#### for the Arduino (low-cost) variant
[  ] Arduino Nano (or equivalent)

[  ] [TowerPro SG90 Micro
Servo](http://www.dx.com/pt/p/towerpro-sg90-9g-mini-servo-with-accessories-12859?tc=EUR&gclid=EAIaIQobChMImq_ws_y61QIV1kAbCh2QWAYLEAQYAiABEgKSEfD_BwE#.WYMKfRRT7Ew)

[  ] [Force Sensitive Resitor
(FSR)](http://www.botnroll.com/en/outros/222-sen-09375-sensor-de-forca-resistivo-05-.html?search_query=fsr&results=3)
sensor with 1.3 cm diameter

[  ] Header pins


## littleBits variant
ToDo

### Schematics
<img src="https://github.com/hugoslv/wolverino/blob/master/littleBits/littleBits.jpg" width="128">


## Arduino (low-cost) variant
ToDo

### Schematics
<img src="https://github.com/hugoslv/wolverino/blob/master/arduino/arduino.png">


## Acknowledgments
This project started out at at [Pixels
Camp](https://github.com/PixelsCamp) 2016 as a friends hangout between
[hugoslv](https://github.com/hugoslv),
[3devangelist](https://github.com/3devangelist) and 
[@pires](https://github.com/pires), where it won 2nd place. 

Subsequent developments made to create a lower-cost version (based on
the Arduino and FSR sensors) have been partially supported by the
[Escola Superior de Tecnologia de Setúbal (EST)](http://www.estsetubal.ips.pt) of the [Instituto
Polit&eacute;cnico de Setúbal (IPS)](http://www.ips.pt/ips_si/web_page.inicial) under the project "Garra".
