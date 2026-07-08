module digct 
  (
  input in1 , 
  input in2 , 
  input in3 ,
  input in4 , 
  input in5 ,
  input clk ,
  output reg out1 ,
  output reg out2 , 
  output reg out3 );
  
reg no , n1 ;
reg d1 ;
reg d2 ;
reg d3 ;

always @ (*)
 begin 
  no= ~(in1 | in2);
  d1= ~(no & in3 ); 
 end 

always @ (*)
 begin 
  d2 =  ~(in2 & in3);
 end 

always @ (*)
 begin 
   n1 = (in3 | ~(in4));
   d3 =  n1|in5;
 end 

always @ (posedge clk)
 begin 
   out1<=d1;
   out2<=d2;
   out3<=d3;
 end 
  
endmodule   
