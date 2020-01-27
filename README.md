# DATAA (Data Acquisition Tool for Adaptable Application)
This device measures the amount of force applied during controlled injury on mice. The device is used for data collection at a research lab in University of Rochester Medical Center. The CAD files for the 3D printed parts can be edited to achieve applicability for various surgery methods.

The strain of an aluminum beam inside the device is measured with two strain gauges. Arduino was used to control the electronics and translate incoming data from the strain gauge.

## Problem Scope
In my lab at UR Medical Center, Dr. Kotelsky needed a method for measuring force values while inflicting controlled injuries on mice. Attempts to measure force through non-electronic means were made, however they were unsuccessful.

## Design Requirements
* Needs to measure and store force data during surgery.
* Needs to act both as a force gauge _and_ the surgery tool.
* Needs to be reliable. The data might be used in a paper.
* Needs to operated by a human hand.
* Needs to have a extruded part through which force will be applied on the mouse, which needs to satisfy the following constraints:
  * Regular hexagon
  * Short diagonal 6.15 mm
* Must be easily operated without any special training.
* Must have an easy to use interface.
* Must have a tare function.
* Must be easily cleaned without damage to the device.
* Must not use dangerous voltages.
* Measure up to 35 Newtons of force
  
## Design Description
**Structure and Materials:**
All of the design requirements were met. 3D printed PLA comprises the structure of the tool due to its fine resolution and robust material properties. The strain gauge is integrated inside the surgical tool, and the device is multifunctional.

**Electronics:**
Arduino is used to control the electronics and translate incoming data from the strain gauges. The strain gauges are housed in a half-bridge load cell. Measurement range is between 0 to 49.05 Newtons. Two resistors were used to make a full Wheatstone Bridge.

**Manufacturing Cost**
The total cost of the [materials](https://github.com/ncan33/DATAA-2019/tree/master/how_to_assemble#materials-and-tools) is under $75. Currently, 3D printing is commonly accesible at research facilities in developed countries. Thus, with the cost and tools taken into account, this is a device that is easy to manufacture.

## Limitations and Future Improvements
_This project is still being developed. The first prototype is a success, however I have many ideas on how to improve it._

***Current works:***
* A housing for the electronic parts is being designed. It will be manufactured via 3D print. I will post the .stl file in this repository.
* Means to update the strain gauge design is being researched.

***Limitations:***
* Can only measure up to 49.05 Newtons
* Can only be operated by a human
* Redesigning the device for other surgical applications would take hours of design and manufacturing

***Future Improvements:***
* Easier adjustability
* Using a full bridge strain gauge
* Means to decrease noise in voltage detection by Arduino
* Improved grip
  * Can be made more ergonomic by allowing middle, ring, and pinky fingers to rest on an area
  * Silicon grip area is wobbly
* Improved portability by removing the necessity of a computer
* Using a storage means different than the Arduino IDE serial monitor to collect data

## Creative Commons License
This device was designed, manufactured, and assembled by Nejat Can. It is licensed under [CC Attribution-NonCommercial-ShareAlike 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/), so any research lab is allowed to use this repository to manufacture their own surgical force gauge.
