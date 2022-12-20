clear; clc; close all;

%==================================================
% CREATE ARDUINO OBJECT AND INCLUDE LIBRARIES

a = arduino('COM6', 'Uno', 'Libraries', 'Servo');


%==================================================
% CREATE SERVO OBJECTS AND SET OFFSET VALUES

servo_1 = servo(a, 'D5');

% set angle factor
degree_factor = (1 - 0) / 180;

servo_1_offset_for_90 = 82;


%==================================================
% CONTROL THE SERVOS

% Set the value to set servo to
servo_1_Pos = 90;

% Convert user input to function input using factor and offset
servo_1_val = (servo_1_Pos - (90 - servo_1_offset_for_90)) * degree_factor;

% Write the positions to the servos
writePosition(servo_1, servo_1_val);









