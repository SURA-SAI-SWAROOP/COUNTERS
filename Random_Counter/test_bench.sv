`timescale 1ns / 1ps

module random_counter_tb();
    reg clk,reset;
    wire [3:0] count;
    
random_counter dut(clk,reset,count);
initial begin
    clk=0;
    reset=1;
end

always #5 clk = ~clk;

initial begin
    #20 reset=1;
    #200 reset=0;
    #200 reset=1;
    #20 reset=0;
end
endmodule
