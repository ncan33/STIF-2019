## Calibration
After the manufacturing & assembly process, the device must be calibrated otherwise the values will not be accurate.

**How to calibrate:**
1. Connect the Arduino to computer.
2. Apply a **known precision load** to the device (example: [perform a materials test](https://github.com/ncan33/STIF-2019/blob/master/visuals/calibration_on_MTS_machine.jpg)).
3. Record the serial monitor output in data analysis software (i.e. Excel, MATLAB, etc.) for a given load. _Example: collect 250 data points of the serial monitor output at a 30 Newton load._
4. Repeat with various loads. After you have a satisfactors number of trials in a satisfactory force range, analyze the data.

## Tare
_The following is important. **The device is tared by resetting the Arduino**. IMPORTANT:_
* ***THE DEVICE MUST BE AT REST IN A VERTICAL POSITION WHEN THE CODE IS UPLOADED***
* ***THE DEVICE MUST BE AT REST IN A VERTICAL POSITION WHEN IT IS RESET***
* Ways to reset the device are:
  * Reupload the code, this will automatically restart the arduino
  * Hit the red reset button on the Arduino
  * Cut power supply to the Arduino, then reintroduce it
  
Tare before each usage. Tare more as needed throughout data collection.

## Measurement Unit
The measurement unit is user defined, and the default unit is pound-force.

_To define a new unit:_
1. Pick the desired force unit by editing the Arduino code
2. Recalibrate by following the steps of **How to calibrate** 

## Data Collection
To collect data, launch the Arduino IDE and connect the Arduino to your computer. Upload the code to your Arduino and open the Serial Monitor in the IDE.

## Research Application
The quality of the data is far more important for research application than convenience of usage. Therefore, for researchers the priority should be to collect good raw data, and perform data analysis afterwards. The following steps can be taken to ensure that the data is the high quality and easy to analyze using MATLAB or Excel.
* Remove units from serial output
* Use a lower calibration_factor (Recommended: 1000)
* Calibrate with a precision tool and collect multiple data points
* Refer to the [data_analysis](https://github.com/ncan33/STIF-2019/tree/master/data_analysis) for an example for data collection with this device and MATLAB analysis.
This repository has the code that satisfies these requirements. To access the code, refer to the folder [code_for_research_application](https://github.com/ncan33/STIF-2019/tree/master/arduino_code/code_for_research_application).
