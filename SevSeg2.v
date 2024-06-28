`timescale 1ns / 1ps

module SevSeg2(wtime,seg1,seg2);
     
     //Declare inputs,outputs and internal variables.
     input [4:0] wtime;
     output [6:0] seg1,seg2;
     reg [6:0] seg1,seg2;

//always block for converting bcd digit into 7 segment format
    always @(*)
    begin
        case (wtime) //case statement
            0 : begin
					seg1 = 7'b0000001;//0
					seg2 = 7'b0000001;//0
					 end
            1 : begin 
					seg1 = 7'b1001111;//1
					seg2 = 7'b0000001;//0
					 end
            2 : begin 
					seg1 = 7'b0010010;//2
					seg2 = 7'b0000001;//0
					 end 
            3 : begin
					seg1 = 7'b0000110;//3
					seg2 = 7'b0000001;//0
					 end
            4 : begin
					seg1 = 7'b1001100;//4
					seg2 = 7'b0000001;//0
					 end
            5 : begin 
					seg1 = 7'b0100100;//5
					seg2 = 7'b0000001;//0
					 end 
            6 : begin 
					seg1 = 7'b0100000;//6
					seg2 = 7'b0000001;//0
					end
            7 : begin 
					seg1 = 7'b0001111;//7
					seg2 = 7'b0000001;//0
					end
            8 : begin 
					seg1 = 7'b0000000;//8
					seg2 = 7'b0000001;//0
					end
            9 : begin 	
					seg1 = 7'b0000100;//9
					seg2 = 7'b0000001;//0
					end
				10 : begin 	
					seg1 = 7'b0000001;//0
					seg2 = 7'b1001111;//1
					end
				12 : begin 
					seg2 = 7'b1001111;//1
					seg1 = 7'b0010010;//2
					end
				15 : begin 
					seg2 = 7'b1001111;//1
					seg1 = 7'b0100100;//5
					end
				18 : begin 
					seg2 = 7'b1001111;//1
					seg1 = 7'b0000000;//8
					end
				21 : begin 
					seg2 = 7'b0010010;//2
					seg1 = 7'b1001111;//1
					end
					
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default :begin 
					seg1  = 7'b0000001; 
					seg2 = 7'b0000001;//0
					end
        endcase
    end
endmodule
