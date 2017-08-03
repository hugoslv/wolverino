# Wolverino
Muscle-controlled fully automatic DiY X-Men Wolverine claws, which
deploy and retract using [Electromyography (EMG)](https://en.wikipedia.org/wiki/Electromyography) or [Mechanomyography (MMG)](https://en.wikipedia.org/wiki/Mechanomyogram)
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

[  ] 1x [External battery holder](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ArmPad.scad) (optional)
 
### Hardware
[  ] Metal wire (like the one used for hanging picture frames)

[  ] Small metal nail (optional)

[  ] Blu tack (or equivalent)

[  ] 1x Power bank with on/off button ([this
model](http://uk.rs-online.com/web/p/power-banks/7757504/) works
great)

[  ] 1x USB to Micro (or Mini) USB cable ([preferrably retractable](http://www.dx.com/pt/p/retractable-usb-to-mini-usb-data-cable-74cm-length-22552#.WYMNZhRT7Ew))


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


## Assembling the 3D printed puzzle
For practical reasons, we broke down the claw structure to its individual components (box, claws, clips, brackets, etc.). These need to be merged (i.e. glued) and/or put together in order to create the solid usable structure the makes the overall Wolverino form factor.

Changes to the scale of the components need to be carefully thought out, given that the current overall size and dimensions have been optimised to house the electronic components into a compact and user-friendly unit shown in the pictures of the Arduino variant bellow.

Needless to say that hacking is incentivised and improvements to the designs will be very welcome ;)

### Step 1: Merge claw and servo boxes
Glue the claw box for the [left](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawBox-LeftArm.scad) or [right](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawBox-RightArm.scad) arm to the corresponding servo box (for the
[left](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ServoBox-LeftArm.scad)
or [right](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ServoBox-RightArm.scad) arm) in such a way that the side slot lines up perfectly. The result should be as follows:
<img src="https://github.com/hugoslv/wolverino/blob/master/photos/Box.JPG">

### Step 2: Claw assembly
To create the claw assembly slide one [claw](https://github.com/hugoslv/wolverino/blob/master/3d%20models/Claw.scad) through the [holding
shaft](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawShaft.scad) in such a way that it is centred on the shaft. 

Slide one of the [spacers](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawSpacers.scad) through the holding shaft to the left of the centred claw and the other spacer through to the right.

Slide the remaining two claws through the holding shaft, one through the left and the other through the right.

Slide one of the [claw retainers](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClawShaftLocks.scad) through the left and the other through the right.

Finish off the assembly, by using a length of metal wire (approx. 4.5 cm) to hold the claw components in place on the shaft. There are a couple of through holds on each edge of the the holding shaft in order to anchor the wire. The result should be as follows:
<img src="https://github.com/hugoslv/wolverino/blob/master/photos/ClawAssembly.JPG">


### Step 3: Claw linkage
In order for the claw to deployed and retracted using the servo, the linkage between the two needs to be created. To do that, take a length of metal wire (approx. 15 cm), make a loop on one of the edges to attach it to the claw assembly and bend the other end (approx. 1 cm) to attach the linkage to the [servo lever](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ServoLever.scad). The result should be as follows:
<img src="https://github.com/hugoslv/wolverino/blob/master/photos/ClawLinkage.JPG">


### Step 4: Armband brackets and claw housing
Glue one [armband bracket](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ArmbandBracket.scad) near the edge of each corner of the housing box. These will later be the mounting points for the hand and forearm elastic bands, so place them in a way that will comfortably fit your arm.

Once the glue dries off, slide the claw and linkage into the box so that the tip of each claw is popping out through the flat surface of the corresponding opening. The result should be as follows:
<img src="https://github.com/hugoslv/wolverino/blob/master/photos/BoxedClaw.JPG">


### Step 5: Servo mounting
The servo position on the box depends on the type of rotation it performs and on whether the claw will be used on the left or right arm, so be sure to confirm these aspects prior to competing this step.

Slide the large hole on the [servo lever](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ServoLever.scad) onto the servo arm and lock the servo lever in place using a piece of the metal wire. 

Using a drill or an x-cutter, cut through straight lines between the dots found on top of the box to open the servo mounting frame. 

Afterwards place the servo on the mounting frame (note that the cable stays outside the box if you’re using the littleBits and goes inside the box if you’re using the Arduino. At this stage you can also attach and screw in the servo arm and lever assembly to the servo.

Lock the servo in place by clipping the [servo
brackets](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ServoBracket.scad) on to each side of servo and gluing the edges of the servo brackets to the box (although you may want to leave this for last to allow fine tuning). The result should be as follows:
<img src="https://github.com/hugoslv/wolverino/blob/master/photos/MountedServo.JPG">


### Step 6 (optional): Power “button”
If you intend to house a power bank with on/off button inside the box, a cool party trick is to have the box surface as the power button. 

To do this, punch a hole through the box over the location of the button (large enough to pass the nail through), slide the nail through the hole in such way that the nail head stays inside the box and trim the nail tip to become dissimulated on the top of the box.

You can see how the finished result looks like in the picture of Step 5; the little silver dot on near the top left corner of the left servo mount is the nail.


## Sewing the elastic armbands
From the multiple options to attach the Wolverino claw to your arm, we chose to create elastic bands, one for the hand and another for the forearm. You can do it yourself or have this made externally, but the process is pretty simple (as described bellow). 

### Step 1: Elastic strip preparation
On each edge of the elastic strip, roll a small portion inwards and stitch it in place. This helps both prevent the edge from shredding and the straps from sliding too easily through the buckles. The result should be as follows:

<img src="https://github.com/hugoslv/wolverino/blob/master/photos/ShredPrevention.JPG">

### Step 2: Stitch the velcro
Take 28 cm of elastic strip (from one stitched edge inwards), stitch 5 cm of velcro hook tape to one end and 9 cm of velcro loop tape after that. This is the base for the hand palm strap.

Take 32 cm of elastic strip (from the other stitched edge inwards), stitch 5 cm of velcro hook tape to one end and 12 cm of velcro loop tape after that. This is the base for the forearm strap.

Note that the above-mentioned lengths for the elastic strip and velcro loop tape have been devised for us. Sizes can greatly depend on your anatomy, so you’ll want to double check these measurements to see if any adjustments are needed in your case.

<img src="https://github.com/hugoslv/wolverino/blob/master/photos/Straps.JPG">

### Step 3: Attach the buckles

On each strap, take the opposing edge to the one handled in Step 1, pass the elastic around the buckle and stitch in place (if the buckle has a top and bottom side its best to confirm the position). The result should be as follows:

<img src="https://github.com/hugoslv/wolverino/blob/master/photos/StrapBuckle.JPG">
<img src="https://github.com/hugoslv/wolverino/blob/master/photos/CompletedStrap.JPG">


## littleBits build with EMG control (a.k.a. Pixels Camp 2016 variant)
This version of Wolverino was implemented using [littleBits](http://littlebits.cc/) and
[BITalino](http://bitalino.com/) components, providing Electromyographic (EMG) control of the claw deployment and retraction. 

### Setup instructions

To replicate this setup, you just need to connect the littleBits and BITalino blocks as shown in the wiring diagram bellow. The firmware is available [here](https://github.com/hugoslv/wolverino/tree/master/littleBits) and supports two user-selectable operation modes, namely, TOGGLE (default) and PROPORTIONAL.

The mode selection is optional, but based on the input of A0 (which in our setup is a Dimmer Bit) and displayed as a 0 or 255 output on D5 (which in our setup is a Bargraph). For the mode selection to work, a bitSnap with a shunt between the SIG and VCC pins needs to be connected to the Dimmer Bit.

In TOGGLE mode the code compares the input on A1 (expected to be a BITalino EMG sensor) to a threshold and toggles D9 (expected to be a servo) between 0 and 255. In PROPORTIONAL mode the code applies a moving average filter to the input on A1 and provides an output bounded to 0-255 on D9.


### Wiring diagram
It is important to highlight that we have the D5 and D9 switches on ANALOG, the servo switch on TURN, and the SIG (middle) jumper on the Proto Bit taken out.

<img src="https://github.com/hugoslv/wolverino/blob/master/littleBits/littleBits.jpg">


### Assembled unit
Combining the instructions found in this section with the assembly instructions for the 3D printed parts, the final result should be similar to the one shown in the pictures bellow (with and without the accessories for mode selection). 

Note that we used the two [Arduino holding clips](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClipArduinoBit.scad) to glue the littleBits Arduino board to the top of the box. In this case we also used the optional [external battery holder](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ArmPad.scad).

<img src="https://github.com/hugoslv/wolverino/blob/master/photos/WolverinoEMG-1.JPG">

<img src="https://github.com/hugoslv/wolverino/blob/master/photos/WolverinoEMG-2.JPG">


## Arduino build with MMG control (a.k.a. low-cost variant)
This version of Wolverino was implemented using an Arduino and the least number of components possible, providing a low-cost alternative based on Mecanomyographic (MMG) control of the claw deployment and retraction. Due to the nature of MMG signals, this approach is more "temperamental" when compared to the EMG-based approach, however it offers a nice cost / functionality ratio.

### Setup instructions

To replicate this setup, you just need to connect the Arduino, servo, FSR and resistor as shown in the wiring diagram bellow. The firmware is available [here](https://github.com/hugoslv/wolverino/tree/master/arduino) and currently only supports the TOGGLE mode.

The code compares the input on A1 (expected to be a FSR) to a threshold and toggles D12 (expected to be a servo) between 15º and 145º. These limits have been defined to prevent the claw from extending in excess (which in some cases makes the claw get stuck on the openings) or retracting in excess (which in some cases forces the servo).

### Wiring diagram
<img src="https://github.com/hugoslv/wolverino/blob/master/arduino/arduino.png">


### Assembled unit
Combining the instructions found in this section with the assembly instructions for the 3D printed parts, the final result should be similar to the one shown in the pictures bellow. 

Note that we used the two [Arduino holding clips](https://github.com/hugoslv/wolverino/blob/master/3d%20models/ClipArduinoBit.scad) to glue the Arduino Nano board inside the box. In this case we also placed the battery inside the box, leading to a more user-friendly unit. Furthermore, the FSR sensor was attached to the bottom of the box with blu tack.

<img src="https://github.com/hugoslv/wolverino/blob/master/photos/WolverinoMMG-1.JPG">

<img src="https://github.com/hugoslv/wolverino/blob/master/photos/WolverinoMMG-2.JPG">


## Acknowledgments
This project started out at at [Pixels
Camp](https://github.com/PixelsCamp) 2016 as a friends hangout between
[hugoslv](https://github.com/hugoslv),
[3devangelist](https://github.com/3devangelist) and 
[pires](https://github.com/pires), where it won 2nd place. 

Subsequent developments made to create a lower-cost version (based on
the Arduino and FSR sensors) have been partially supported by the
[Escola Superior de Tecnologia de Setúbal (EST)](http://www.estsetubal.ips.pt) of the [Instituto
Polit&eacute;cnico de Setúbal (IPS)](http://www.ips.pt/ips_si/web_page.inicial) under the project "Garra".
