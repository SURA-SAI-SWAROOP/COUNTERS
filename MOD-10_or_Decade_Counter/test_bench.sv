`timescale 1ns / 1ps

module mod_10_counter_tb();
    reg clk,reset;
    wire [3:0] count;
    
mod_10_counter dut(clk,reset,count);
    
initial begin
    clk = 0;
    reset=1;
end
always #5 clk = ~clk;
initial begin
    #20 reset=0;
    #100 reset=0;
end
endmodule
