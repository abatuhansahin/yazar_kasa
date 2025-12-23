`timescale 1ns / 1ps
module Tb();

 reg [1:0] A_TB ;
 reg [1:0] B_TB ;
 
 wire G_TB ;
 wire Y_TB ;
 wire R_TB ;
 
 new uut(
 .A(A_TB),
 .B(B_TB),
 .R(R_TB),
 .G(G_TB),
 .Y(Y_TB)
 );
 
 initial begin 
 A_TB=2'b00; B_TB=2'b01; #10; // yeşil
 A_TB=2'b11; B_TB=2'b11; #10; // sarı
 A_TB=2'b10; B_TB=2'b01; #10; // kırmızı
 
 $finish;
  
 end 
 endmodule