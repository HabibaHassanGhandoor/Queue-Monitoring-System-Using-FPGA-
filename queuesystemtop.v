module queuesys(
input clk, rst, sen1, sen2,
input [1:0] Tcount, //Takes values from 0 to 3 so needs 2 bits to express
output [6:0] segp, segw1, segw2, //Every 7-segment has 7 leds to express
output full, empty //Every out of them will be expressed in a way on the FPGA

);
wire [4:0] wtime;
wire Pcount;
wire fsmup, fsmdown;
wire edgedetup, edgedetdown;

counter u0(
.clk(clk), 
.rst(rst),
.up(fsmup), 
.down(fsmdown),
.pcount(Pcount),
.full(full), 
.empty(empty)
    );
	//another instance for edge detector because one for every sensor (input)
Edge_Detector u1(
.clk(clk), 
.sig(sen1),
.out(edgedetup)
    );

Edge_Detector u2(
.clk(clk), 
.sig(sen2),
.out(edgedetdown)
    );

FSM u3(
.clk(clk),
.rst(rst),
.Fsen( edgedetup), 
.Bsen(edgedetdown),
.up(fsmup), 
.down(fsmdown) 
    );
	
rom u4(

.tcount(Tcount),
.pcount(Pcount),
.wtime_bin(wtime)
);

SevSeg u5(
.Pcount(Pcount),
.seg(segp)
);

SevSeg2 u6(
.wtime(wtime),
.seg1(segw1),
.seg2(segw2)
):


endmodule 



