`timescale 1ns / 1ps

module phone_number_counter(
    input clk,reset,
    output reg [3:0] count,num
    );

always @(posedge clk)
begin
    if(reset | count==9)
        count <= 0;
    else
        count <= count+1;
end

//the phone number is 7287909410
always @(count)
begin
    case(count)
        0: num = 7;
        1: num = 2;
        2: num = 8;
        3: num = 7;
        4: num = 9;
        5: num = 0;
        6: num = 9;
        7: num = 4;
        8: num = 1;
        9: num = 0;
        default: num = 7;
     endcase
end    
endmodule
