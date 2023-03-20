`timescale 1ns / 1ps

module phone_number_counter_tb();
    reg clk,reset;
    wire [3:0] count,num;
    
phone_number_counter dut(clk,reset,count,num);
initial begin
    clk = 0;
    reset=1;
end
always #5 clk = ~clk;

initial begin
    #20 reset=0;
    #200 reset=1;
    #20 reset=0;
end

endmodule
