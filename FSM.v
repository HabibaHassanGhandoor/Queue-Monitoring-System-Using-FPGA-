`timescale 1ns / 1ps

module FSM(
input clk,rst,
input Fsen, Bsen,
output reg up, down 
    );
    
    reg [1:0] currentstate, nextstate; //To select between 3 states
    
    //To give the states a value
    parameter IDLE = 2'b00;
    parameter UPSTATE = 2'b01;
    parameter DOWNSTATE = 2'b10;
    
    always@(posedge clk, posedge rst)
    begin
    if(rst)
    currentstate <= IDLE;
    else 
    currentstate <= nextstate;
    end 
    
    always@(*)
    begin
    case (currentstate)
    
    IDLE: begin
    up <= 1'b0;
    down <= 1'b0;
    if (Fsen)
    nextstate <= UPSTATE;
    else if (Bsen)
    nextstate <= DOWNSTATE;
    else
    nextstate <= IDLE;
    end
    
    UPSTATE: begin
    up <= 1'b1;
    down <= 1'b0;
    if (Fsen)
        nextstate <= UPSTATE;
        else if (Bsen)
        nextstate <= DOWNSTATE;
        else
        nextstate <= IDLE;
      end
      DOWNSTATE: begin
       up <= 1'b0;
       down <= 1'b1;
          if (Fsen)
              nextstate <= UPSTATE;
              else if (Bsen)
              nextstate <= DOWNSTATE;
              else
              nextstate <= IDLE;
            end
endcase
end       
endmodule
