%{

Testing done at calibration_factor = 1000;

This code does the following:
- Import raw data from force device
- Convert string to number
- Plot data and linear fit
- Calculate R-squared

Lesson learned: don't print unwanted strings in Arduino serial monitor


RESULTS: R-squared is 0.9983 so it is very strong correlation.


Note: in case the corrcoef function is giving the wrong value, maybe double
checking the R-sqared value with Excel might be a good idea.

%}

T = readtable('01_29_20_MTS_analysis.xlsx'); %import data
rawdata = T.Variables; %convert table to 141x22 cell array


%readings at serial monitor as cell array
cell_array = [rawdata(:,2) rawdata(:,4) rawdata(:,6) rawdata(:,8)... 
    rawdata(:,10) rawdata(:,12) rawdata(:,14) rawdata(:,16)...
    rawdata(:,18) rawdata(:,20) rawdata(:,22)];
%type rawdata in command window to inspect which row belongs to which load


pure_array = erase(cell_array,"Reading: "); %remove unwanted string from cell array
array = str2double(pure_array); %cell array to vector


%array is a matrix. make a vector for each load increment:
array0 = array(:,1);
array4 = array(:,2);
array6 = array(:,3);
array8 = array(:,4);
array10 = array(:,5);
array12 = array(:,6);
array14 = array(:,7);
array16 = array(:,8);
array18 = array(:,9);
array20 = array(:,10);
array22 = array(:,11);


%DATA IS TIDY.
%BEGIN ANALYSIS:

%calculate average values:
ave0 = mean(array0);
ave4 = mean(array4);
ave6 = mean(array6);
ave8 = mean(array8);
ave10 = mean(array10);
ave12 = mean(array12);
ave14 = mean(array14);
ave16 = mean(array16);
ave18 = mean(array18);
ave20 = mean(array20);
ave22 = mean(array22);

%make vectors:
ave_output = [ave4 ave6 ave8 ave10 ave12 ave14 ave16 ave18 ave20 ave22];
force = [4 5.85 8 10 12 14 16 18 20 22];

%generate linear fit data
linear_eq = polyfit(ave_output,force,1);
linear_fit = polyval(linear_eq,ave_output);

%plot data
plot(ave_output,force,'o',ave_output,linear_fit,'-')
title("Force vs. Average Output")
xlabel("Average Output (Proportional to Voltage)")
ylabel("Force (Newtons)")
legend('Data','Linear fit')

%display r-squared value
disp(' ')
disp('R-squared is:')
R_matrix = corrcoef(ave_output,force);
R = R_matrix(2,1);
Rsq = R^2;
disp(Rsq)