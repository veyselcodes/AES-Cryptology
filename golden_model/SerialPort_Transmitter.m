clc;clear;close all;
pkg load instrument-control
testport = serial("COM4");

pause (1);
set(testport, 'baudrate',115200);
set(testport, 'bytesize',8);
set(testport, 'parity','n');
set(testport, 'timeout',50);
srl_flush(testport);

a={"12" "11" "10" "9" "8" "7" "6" "5" "4" "3" "2" "1" "0" "13" "14" "15"};
l= length(a)
srl_write(testport, a);
pause(0.1);

[data,count] = srl_read(testport,1);
recieved = dec2hex(data)
fclose(tespoint);