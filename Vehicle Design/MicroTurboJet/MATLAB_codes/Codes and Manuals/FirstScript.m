% Write a Matlab script that will be compiled, loaded onto and executed on the arduino Uno. This will be accomplished with the Matlab Support Package for Arduino Hardware.

clear; clc; close all;

% Get some user settings
ledPin = 'D13';
deltaT_blink = 0.5;

% Use the Matlab Support Package for Arduino Hardware to instantiate an arduino object that will be used to communicate with the Arduino Uno board
port = 'COM6';
board = 'Uno';

a = arduino(port, board);

% Write a small for loop that flashes the LED on and off several times

for i = 1:100000
    % Turn off
    a.writeDigitalPin(ledPin, 0);
    pause(deltaT_blink/2);
    
    % Turn on
    a.writeDigitalPin(ledPin, 1);
    pause(deltaT_blink/2);

end












