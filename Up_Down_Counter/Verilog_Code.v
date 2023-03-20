`timescale 1ns / 1ps

module up_down_counter(
    input clk,reset,s,
    output reg [3:0] count = 4'd0 
    );
    
 //up_down counter
 always@(posedge clk)
 begin
    if(reset)
        count <= 4'd0;
    else
        begin
        case(s)
        0: count <= count + 1'd1;
        1: count <= count - 1'd1;
        endcase
        end
end   
endmodule
