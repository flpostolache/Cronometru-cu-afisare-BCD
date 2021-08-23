`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2021 10:45:42 AM
// Design Name: 
// Module Name: cronometru_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cronometru_top(clk, reseteaza, pauza, BCD0, BCD1, BCD2, BCD3);
input clk, reseteaza, pauza;
wire [5:0] iesire_sec, iesire_minute;
wire cout_sec, cout_min;
output [3:0] BCD0, BCD1, BCD2, BCD3;

numarator sec(clk, reseteaza, pauza, iesire_sec, cout_sec);
numarator minute(cout_sec, reseteaza, pauza, iesire_minute, cout_min);

Modul_ZCB conv_sec(iesire_sec, BCD0, BCD1);
Modul_ZCB conv_min(iesire_minute, BCD2, BCD3);
endmodule
