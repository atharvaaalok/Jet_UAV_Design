a = arduino('COM6', 'Uno');

% Read Digital Pin - Output is 0 if LOW, 1 if HIGH
readDigitalPin(a, 'D2');

% Read Analog Pin
readVoltage(a, 'A0');

% Writing Digital Pin
writeDigitalPin(a, 'D3', 1); % Write HIGH

% Write PWM signal
% Matlab allows to define the 1) Duty Cycle or 2) Effective Voltage between 0 and 5
writePWMVoltage(a, 'D3', 5); % 5 is maximum













































