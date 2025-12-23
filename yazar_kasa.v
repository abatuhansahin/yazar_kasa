`timescale 1ns / 1ps
module new(

input wire [1:0] A,// A[1] 
input wire [1:0] B,

output wire      G,
output wire      Y,
output wire      R
    );
wire xnor1, xnor2;
assign xnor1= ~(A[1]^B[1]); 
assign xnor2= ~(A[0]^B[0]); 
   
assign G = (~A[1] & B[1]) | (xnor1 & (~A[0] &B[0]))  ;
assign Y = xnor1 & xnor2 ;
assign R =(A[1]& ~B[1]) |( xnor1 & (A[0]&~B[0]));
  
endmodule
