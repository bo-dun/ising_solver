module Multiply(A,B,C);

    input [31:0] A;
    input [31:0] B;
    output [31:0] C;
  
    reg [31:0] C;
    reg [7:0] A1 [0:1][0:1];
    reg [7:0] B1 [0:1][0:1];
    reg [7:0] Res [0:1][0:1]; 
    integer i,j,k;

    always@ (A or B)
    begin

        {A1[0][0],A1[0][1],A1[1][0],A1[1][1]} = A;
        {B1[0][0],B1[0][1],B1[1][0],B1[1][1]} = B;
        i = 0;
        j = 0;
        k = 0;
        {Res[0][0],Res[0][1],Res[1][0],Res[1][1]} = 32'd0; //initialize to zeros.

        for(i=0;i < 2;i=i+1)
            for(j=0;j < 2;j=j+1)begin
                for(k=0;k < 2;k=k+1)begin
                    Res[i][j] = Res[i][j] + (A1[i][k] * B1[k][j]);
                    $display("VAL for i = %d and j = %d: %d", i, j, A1[i][k] * B1[k][j]);
                    $display("Total: %d", Res[i][j]);
                    end
            end
        $display("FINAL MATRIX= %d, %d, %d, %d", Res[0][0], Res[0][1], Res[1][0], Res[1][1]);
          
        C = {Res[0][0],Res[0][1],Res[1][0],Res[1][1]};
        $display("%h", C);            
    end 

endmodule