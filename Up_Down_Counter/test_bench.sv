`timescale 1ns / 1ps

module up_down_counter_tb();
    reg clk,reset,s;
    wire [3:0] count;
    
up_down_counter dut(clk,reset,s,count);
initial begin
    clk=0;
    reset=1;
    s=0;
end 
always #5 clk = ~clk;

initial begin
    #20 reset=0; s=0;
    #100 s=1;
    #100 s=0;
    #300 s=1;   
end
endmodule
