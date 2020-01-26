# Manufacturing Guide
The purpose of this document is to provide instructions on how to manufacture and assemble DATAA.

## Materials and Tools
This device is comprised of 3D printed PLA and various electronic parts.

***Tools Needed***:
* _3D printer_
  * _≤0.4 mm nozzle_
  * _Minimum print dimensions: 50x50x120 mm_
* _Soldering iron_
* _Slicer software (i.e. Ultimaker Cura, Slic3r, etc.)_

***Materials and Parts Needed:***
* _3D print material: PLA or ABS filament (PLA recommended)_
* _[uxcell 5kg Half-bridge Strain Gauge](https://www.amazon.com/dp/B07NRD5969/ref=cm_sw_em_r_mt_dp_U_WzBlEbVYCE79Q)_
* _[Arduino Kit (the following included)](https://www.amazon.com/ELEGOO-Project-Tutorial-Controller-Projects/dp/B01D8KOZF4/ref=sr_1_2_sspa?keywords=arduino+uno&qid=1580056066&s=electronics&sr=1-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzSVAyUFRQSEtPUzlOJmVuY3J5cHRlZElkPUEwNjIyOTMzMTVYMDlFQ09NV043QSZlbmNyeXB0ZWRBZElkPUEwOTE1MDY2MzhLWVhQOVdMOVNVQiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=)_
  * _Arduino Uno_
  * _Male and female jumper wires_
  * _5V power supply module_
  * _9V battery module_
* _[HX711 load cell amplifier](https://www.amazon.com/gp/product/B07MY2PBY4/ref=ppx_yo_dt_b_asin_title_o05_s00?ie=UTF8&psc=1)_
* _[Metric bolts and nuts](https://www.amazon.com/gp/product/B07HVRJW5J/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&th=1)_
  * 4 count M2x12
  * 2 count M3x8

***Skills Needed:***
* Ability to solder
* Ability to operate a 3D printer and slicer software
* Knowledge of basic circuits
* Basic knowledge of Arduino IDE software

## Manufacturing Process
After the materials and electronic parts are acquired, there are two manufacturing procedures: (1) 3D print the [cad_files](https://github.com/ncan33/DATAA-2019/tree/master/cad_files), (2) solder the [circuit](https://github.com/ncan33/DATAA-2019/tree/master/circuit).

After the circuit is soldered, protect the brittle load cell wires with heat-shrink tubes (optional).

## Assembly Process
1. Fasten `part3.stl` to the load cell using two M3x8 bolt and nut
2. Fasten `part1.stl` and `part2.stl` to the load cell using four M2x12 bolt and nut

Diagrams aren't included because it's extremely easy to assemble this device. Use the [visuals folder](https://github.com/ncan33/DATAA-2019/tree/master/visuals) as a guide during the assembly.
