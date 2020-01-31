# DOCUMENT UNDER CONSTRUCTION

## Data Analysis
***Purpose***

***Procedure***

***Results***


The folder [CODE_MTS_test](https://github.com/ncan33/STIF-2019/blob/master/data_analysis/CODE_MTS_test/CODE_MTS_test.ino) has the


# Data Analysis
The folder [CODE_MTS_test](https://github.com/ncan33/STIF-2019/blob/master/data_analysis/CODE_MTS_test/CODE_MTS_test.ino) was the Arduino code used during the test. Data from the serial monitor was imported to Excel and raw data was analyzed in MATLAB. 


--


## Challenges
One encountered problem was the serial print had an unwanted string "Readings:". This made it harder to analyze in MATLAB, but the erase function was used to clear the cell array of unwanted strings. After the cell array was cleared of unwanted strings, it was converted to a matrix with double data type using the function str2num.

The easier approach would be to edit the Arduino code such that the 

NOT FINISHED
