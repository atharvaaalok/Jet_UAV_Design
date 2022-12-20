% Serial Communication with ECU

% To See list of available serial ports
instrhwinfo("serialport")
serialportlist

% Make serial object
ECU_serialObj = serialport("COM5", 9600);

% Configure communication
ECU_serialObj.BaudRate = 9600;
ECU_serialObj.DataBits = 8;
ECU_serialObj.StopBits = 1;
ECU_serialObj.Parity = "none";
configureTerminator(ECU_serialObj, "CR");
ECU_serialObj.Terminator

% % Following is taken from - https://www.youtube.com/watch?v=fDD2JzJ3KBg&ab_channel=PaulMcWhorter
% % Open Serial port using serial object
% fopen(ECU_serialObj);
% fwrite(ECU_serialObj, "Embedded Laboratory");
% received = fgets(ECU_serialObj);

% Write commands and read response
writeline(ECU_serialObj, "hello");
response = readline(ECU_serialObj)
response = readline(ECU_serialObj)


























