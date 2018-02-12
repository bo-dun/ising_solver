 module tb;

    reg [31:0] A;
    reg [31:0] B;
    wire [31:0] C;

    Multiply uut (
        .A(A), 
        .B(B), 
        .C(C)
    );

    initial begin
        A = 0;  B = 0;
        A = {8'd1,8'd2,8'd3,8'd4};
        B = {8'd5,8'd6,8'd7,8'd8};
    end
      
endmodule