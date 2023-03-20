`timescale 1ns / 1ps

module up_counter_tb();
reg clk, reset;
wire [3:0] count;

UP_COUNTER dut(clk, reset, count);
initial begin
    clk=0;
end

always #5 clk =~clk;
initial begin
    reset=1;
    #20 reset=0;
end
endmodule
