`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2021 11:06:51 AM
// Design Name: 
// Module Name: numarator
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


module numarator(clk,reset , pause, iesire, cout);
input clk, pause, reset;
output [5:0] iesire;
output cout;
reg cout = 0;
reg [5 : 0] iesire= 6'b000000;

always @(posedge clk, posedge reset)
begin
    if(reset)
    begin
        iesire <= 6'b000000;
        cout <= 0;
    end
    else
    begin
    if(pause == 0)
    begin
        iesire <= iesire + 1;
        cout <= 0;
    if( iesire >= 59)
    begin
        iesire <= 6'b000000;
        cout <= 1;
    end
    end
    end
end
endmodule
