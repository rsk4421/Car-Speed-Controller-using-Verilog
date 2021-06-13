# Car-Speed-Controller-using-Verilog
To design a secure car speed controller using Verilog HDL in XILINX and simulate the output in ModelSim.
The speed of the car which is to be controlled, requires the break status, acceleration status, and the status of key (i.e., On or Off). Whenever the accelerator goes high, the speed value gets incremented and whenever the break is high no matter what state the accelerator is in, the value of speed is decreased. Also, if the state of key is off, speed will always remain zero.
FSM concept is applied here. A state machine is a behaviour model. It consists of a finite number of states and is therefore also called finite-state machine (FSM). Based on the current state and a given input the machine performs state transitions and produces outputs.
