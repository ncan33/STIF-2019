## Calibration
After the manufacturing & assembly process, the device must be calibrated otherwise the values will not be accurate.

**How to calibrate:**
1. Connect the Arduino to computer.
2. Apply a **known load** to the device (i.e. use a [weight set](https://www.amazon.com/United-Scientific-WHST13-Slotted-Weights/dp/B00ES3QNUQ/ref=sr_1_3?keywords=lab+weight+set&qid=1580078381&s=industrial&sr=1-3), or use a [precision scale](https://images-na.ssl-images-amazon.com/images/I/61YSVHc1hwL._SX425_.jpg) to apply measured loads).
3. Increase or decrease variable `calibration_factor` in the Arduino code. This will cause a direct change in the readings in the Serial Monitor.
4. When the readings match the known load, you've successfully calibrated the device.
5. (optional) Repeat with various loads ranging from 0-10.00 lb to check function.

## Tare
_The following is important. The force reading is tared when the Arduino is reset. IMPORTANT:_
* ***THE DEVICE MUST BE AT REST IN A VERTICAL POSITION WHEN THE CODE IS UPLOADED***
* ***THE DEVICE MUST BE AT REST IN A VERTICAL POSITION WHEN IT IS RESET***
* Ways to reset the device are:
  * Reupload the code, this will automatically restart the arduino
  * Hit the red reset button on the Arduino
  * Cut power supply to the Arduino, then reintroduce it


## Measurement Unit
The measurement unit is user defined, and the default unit is pound-force.

_To define new unit:_
1. Pick the desired force unit by editing the Arduino code
2. Recalibrate by following the steps of **How to calibrate** 

## Data Collection
To collect data, launch the Arduino IDE and connect the Arduino to your computer. Upload the code to your Arduino and open the Serial Monitor in the IDE.
