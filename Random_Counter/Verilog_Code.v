`timescale 1ns / 1ps

module random_counter(
    input clk,reset,
    output reg [3:0] count 
);
    
//The random sequence is 0--2--5--3--6--8--4--1--9--13--12--0--2....
always @(posedge clk)
begin
    if(reset)
        count <= 0;
    else
    begin
        case(count)
            0: count <= 2;
            2: count <= 5;
            5: count <= 3;
            3: count <= 6;
            6: count <= 8;
            8: count <= 4;
            4: count <= 1;
            1: count <= 9;
            9: count <= 13;
            13: count <= 12;
            12: count <= 0;
            default: count <= 0;
        endcase
    end         
end
endmodule
