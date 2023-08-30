module sync_down_counter_tb;

wire[3:0] count;
reg clock,reset;
sync_down_counter c0(clock,count,reset);
initial
 begin 
 clock = 0;
 reset =1;
 #20 reset=0;
 #150 $stop;
 end
 always
  #5 clock=~clock;
endmodule