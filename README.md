# Surgery Tool with Integrated Force-gauge
This device measures the amount of force applied during controlled injury on mice. The device is used for data collection at a research lab in University of Rochester Medical Center. The CAD files for the 3D printed parts can be edited to achieve applicability for various surgery methods.

The strain of the aluminum beam inside the device is measured with two strain gauges. Arduino was used to control the electronics and translate incoming data from the strain gauge. Since strain is linearly correlated with the amount of force applied, the device can measure the applied force.

**[See Technical Report](https://github.com/ncan33/STIF-2019/blob/master/Technical%20Report.pdf)**

## Problem Scope
Dr. Kotelsky needed a method for measuring force values while inflicting controlled injuries on mice. Attempts to measure force through non-electronic means were made, however they were unsuccessful.

## Design Requirements
**Function**
* Needs to measure and store force data during surgery.
* Needs to act both as a force gauge _and_ the surgery tool.
* Will be operated by a human hand.
* Needs to measure up to 35 Newtons of force

**Reliability**
* Needs to be accurate up to research standards. The data collected by the device is intended to be published.
* Voltage output shall not be affected by ambient temperature.

**Dimensions**
* Needs to have an extruded part through which force will be applied on the mouse, which needs to satisfy the following constraints:
  * Regular hexagon
  * Short diagonal 6.15 mm
* The grip must be in the shape of the tool previously used to cause the controlled injury.

**Features**
* Must be easily operated without any special training.
* Must have an easy to use interface.
* Must have a tare function.
* Should be cleaned without damage to the device.

**Safety**
* Must not cause unwanted injuries to the mouse.
* Must not use dangerous voltages.
  
## Design Description
**Application:**
Check the [data_analysis folder](https://github.com/ncan33/STIF-2019/tree/master/data_analysis) for results acquired in the materials testing lab. An MTS machine was used to precisely apply known loads. Data collection was performed. Refer to [this document](https://github.com/ncan33/STIF-2019/blob/master/data_analysis/MATLAB_code_PDF/MTS_data_analysis_01_29_20.pdf) to access Force vs. Digital Output graph, and the 0.998 R-squared value. The graph is extremely linear and the device is proven to be functional with robust data. Repeated MTS test done for reliability-check yielded exactly the same results.

**Structure and Materials:**
All of the design requirements were met. 3D printed PLA comprises the structure of the tool due to its fine resolution and robust material properties. The strain gauge is integrated inside the surgical tool, and the device is multifunctional.

**Electronics:**
Arduino is used to control the electronics and translate incoming data from the strain gauges. The strain gauges are housed in a half-bridge load cell. Measurement range is between 0 to 49.05 Newtons. Measurement isn't affected by ambient temperature due to the half-bridge nature of the circuit. Two resistors were added to make a Wheatstone Bridge.

**Manufacturing Cost:**
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
  * Silicon grip area is not secured to the grip
* Improved portability by removing the necessity of a computer
* Using a storage means different than the Arduino IDE serial monitor to collect data

## Creative Commons License
This device was designed, manufactured, and assembled by Nejat Can. It is licensed under [CC Attribution-NonCommercial-ShareAlike 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/), so any research lab is allowed to use this repository to manufacture their own surgical force gauge.
