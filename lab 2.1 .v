module digct 
  (
    input [3:0] in ,
    input latch , 
    input dec , 
    input clk ,
    output zero , 
    output reg [3:0] counter 
    );
  
reg [3:0] d1 ;

always @ (*)
 begin 
   if (latch)
     d1= in ;
   else if ((zero==0)&(dec!=0))
     d1 = counter - 4'b0001 ;
   else d1 = counter ;
 end 
 assign zero = (counter==4'b0);

always @ (posedge clk)
 begin 
   counter<=d1;
 end 
  
endmodule   
