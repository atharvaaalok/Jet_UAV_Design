clear; clc; close all;

%==================================================
% SPECIFY THE ARDUINO BOARD AND THE PORT

port = 'COM6';
board = 'Uno';

% Create arduino object
arduino_obj = arduino(port, board);


%==================================================
% OUPTUT PWM SIGNAL TO THE PIN CONNECTED TO ECU

pin_throttle = 'D6';

% Throttle value from 0 to 100. Throttle factor to convert throttle to 0-1
throttle = 50;
throttle_factor = 1 / 100;

writePWMDutyCycle(arduino_obj, pin_throttle, throttle * throttle_factor);













