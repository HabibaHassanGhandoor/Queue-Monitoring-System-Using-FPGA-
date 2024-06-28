`timescale 1ns / 1ps

module counter(
input clk, rst,up, down,
output reg [2:0] pcount,
output full, empty
    );
    reg full_reg, empty_reg;
    always@(posedge clk, posedge rst)
    begin
    if (rst)
    begin 
    pcount <= 0;
    full_reg <= 0;
    empty_reg <= 1;
    end
    else if (up)
    begin
    if(pcount == 7)
    begin
    full_reg <= 1;
    empty_reg <= 0;
    end
    else
    begin
    pcount <= pcount+1;
    empty_reg <= 0;
    full_reg <= 0;
    end
    end
    else if (down)
    begin
    if (pcount == 0)
    begin
    empty_reg <= 1;
    full_reg <= 0;
    end
    else
    begin
    pcount <= pcount-1; 
    empty_reg <= 0;
    full_reg <= 0;
    end
    end
    else 
    pcount <= pcount; 
    end
    assign empty = empty_reg;
    assign full = full_reg;
    
    
endmodule
