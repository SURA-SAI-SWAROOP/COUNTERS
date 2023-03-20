`timescale 1ns / 1ps

module mod_10_counter(
    input clk,reset,
    output reg [3:0] count
    );
always@(posedge clk)
begin
    if(reset | count==10)
        count <= 0;
    else
        count <= count+1;
end
endmodule
