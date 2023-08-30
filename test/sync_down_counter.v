module sync_down_counter(clock,count,reset);
 output reg[3:0]count;
 input clock,reset;
 always @ (posedge clock) begin
  if (reset)
   count<=4'b0;
  else 
    count<=count-1;
end
endmodule