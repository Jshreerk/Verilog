module bcd_to_segment7(
  input [3:0]bcd,
  output a,b,c,d,e,f,g
);
  assign a=(bcd==0)||(bcd==2)||(bcd==3)||(bcd==5)||(bcd==6)||(bcd==7)||(bcd==8)||(bcd==9);
  assign b=(bcd==0)||(bcd==1)||(bcd==2)||(bcd==3)||(bcd==4)||(bcd==7)||(bcd==8)||(bcd==9);
  assign c=(bcd==0)||(bcd==1)||(bcd==3)||(bcd==4)||(bcd==5)||(bcd==6)||(bcd==7)||(bcd==8)||(bcd==9);
  assign d=(bcd==0)||(bcd==2)||(bcd==3)||(bcd==5)||(bcd==6)||(bcd==7)||(bcd==8)||(bcd==9);
  assign e=(bcd==0)||(bcd==2)||(bcd==6)||(bcd==8);
  assign f=(bcd==0)||(bcd==4)||(bcd==5)||(bcd==6)||(bcd==8)||(bcd==9);
  assign g=(bcd==2)||(bcd==3)||(bcd==4)||(bcd==5)||(bcd==6)||(bcd==8)||(bcd==9);
endmodule