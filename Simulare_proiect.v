`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2021 08:40:12 PM
// Design Name: 
// Module Name: Simulare_proiect
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


module Simulare_proiect();
reg clock, reseteaza=0, pauza=0;
wire [3:0] cifra0, cifra1, cifra2, cifra3;

cronometru_top h(clock, reseteaza, pauza, cifra0, cifra1, cifra2, cifra3);

always #10 clock = ~clock;

initial
begin
clock = 1;
reseteaza = 1;
pauza = 0;
//#100 pauza = 1;
//#100 pauza = 0;
//#500 reseteaza = 1;
#20 reseteaza = 0;
end

endmodule
