clc;clear;
pkg load instrument-control;
testport = serial("COM4");

pause(1);
set(testport, 'baudrate',115200);
set(testport, 'bytesize',8);
set(testport, 'parity','n');
set(testport, 'timeout',50);
srl_flush(testport);

[rxdata,count]=srl_read(testport,16);
recieved = dec2hex(rxdata)

fclose(testport);