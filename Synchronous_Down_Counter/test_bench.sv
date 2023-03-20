`timescale 1ns / 1ps

module down_counter_tb();
    reg clk,reset;
    wire [3:0] count;
    
DOWN_COUNTER dut(clk,reset,count);

initial begin
    clk = 0;
    reset = 1;
end
always #5 clk = ~clk;

initial begin
    #20 reset = 0;
end      
endmodule
