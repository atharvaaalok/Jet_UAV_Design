% Serial Communication with ECU

% Make serial object and connect to the port ECU is connected to
ECU_serialObj = serialport("COM5", 9600);

% Configure communication
ECU_serialObj.BaudRate = 9600;
ECU_serialObj.DataBits = 8;
ECU_serialObj.StopBits = 1;
ECU_serialObj.Parity = "none";
configureTerminator(ECU_serialObj, "CR");



% Write command
writeline(ECU_serialObj, "1,tco,1");
% Collect echo of the received command
echo = readline(ECU_serialObj);
% Collect handshake of ECU
data = readline(ECU_serialObj);















