`timescale 1ns / 1ps

module UP_COUNTER(
    input clk,reset,
    output reg [3:0] count = 4'd0
);

//up counter
always @(posedge clk)
begin
if(reset)
    count <= 4'd0;
else
    count <= count + 4'd1;
end
endmodule
