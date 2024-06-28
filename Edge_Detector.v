`timescale 1ns / 1ps

module Edge_Detector(
input clk, sig,
output   out
    );
    reg sig_reg;
    always@(posedge clk)
    begin
    sig_reg <= sig; //next state = prev state
    end
    //we'll equalize them and then and them. if they give 1 we take it as out signal
    assign out = sig_reg & ~sig; 
endmodule
