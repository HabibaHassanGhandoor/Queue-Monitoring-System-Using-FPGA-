module rom (tcount,pcount,wtime_bin);

input [1:0] tcount;
input [2:0] pcount;
output reg [4:0] wtime_bin;

always @(*) begin

	case (pcount)
		
		3'd0: begin
			if(tcount==0) begin
				wtime_bin = 0;
			end
			if(tcount==1) begin
				wtime_bin = 0;
			end
			if(tcount==2) begin
				wtime_bin = 1;
			end
			if(tcount==3) begin
				wtime_bin = 2;
			end
		end
		3'd1: begin
			if(tcount==0) begin
				wtime_bin = 0;
			end
			if(tcount==1) begin
				wtime_bin = 3;
			end
			if(tcount==2) begin
				wtime_bin = 3;
			end
			if(tcount==3) begin
				wtime_bin = 3;
			end
		end
		3'd2: begin
			if(tcount==0) begin
				wtime_bin = 0;
			end
			if(tcount==1) begin
				wtime_bin = 6;
			end
			if(tcount==2) begin
				wtime_bin = 4;
			end
			if(tcount==3) begin
				wtime_bin = 4;
			end
		end
		3'd3: begin
			if(tcount==0) begin
				wtime_bin = 0;
			end
			if(tcount==1) begin
				wtime_bin = 9;
			end
			if(tcount==2) begin
				wtime_bin = 6;
			end
			if(tcount==3) begin
				wtime_bin = 5;
			end
		end
		3'd4: begin
			if(tcount==0) begin
				wtime_bin = 0;
			end
			if(tcount==1) begin
				wtime_bin = 12;
			end
			if(tcount==2) begin
				wtime_bin = 7;
			end
			if(tcount==3) begin
				wtime_bin = 6;
			end
		end
		3'd5: begin
			if(tcount==0) begin
				wtime_bin = 0;
			end
			if(tcount==1) begin
				wtime_bin = 15;
			end
			if(tcount==2) begin
				wtime_bin = 9;
			end
			if(tcount==3) begin
				wtime_bin = 7;
			end
		end
		3'd6: begin
			if(tcount==0) begin
				wtime_bin = 0;
			end
			if(tcount==1) begin
				wtime_bin = 18;
			end
			if(tcount==2) begin
				wtime_bin = 10;
			end
			if(tcount==3) begin
				wtime_bin = 8;
			end
		end
		3'd7: begin
			if(tcount==0) begin
				wtime_bin = 0;
			end
			if(tcount==1) begin
				wtime_bin = 21;
			end
			if(tcount==2) begin
				wtime_bin = 12;
			end
			if(tcount==3) begin
				wtime_bin = 9;
			end
		end
		default: begin
			wtime_bin = 0;
		end
	
	endcase

end

endmodule
