`timescale 1ns / 1ps
//gate level modeling
//module full_sub(input a, b, borrowIn, output diff, borrowOut);
//    wire wire_1, wire_2, wire_3;
//    xor (wire_1, a, b);
//    xor (diff, wire_1, borrowIn);
//    and (wire_2, ~a, b);
//    and (wire_3, ~wire_1, borrowIn);
//    or (borrowOut , wire_2, wire_3);
//endmodule

//data flow level modeling
//module full_sub(input a, b, borrowIn, output diff, borrowOut);
//    assign diff = a^b^borrowIn;
//    assign borrowOut = (~a&b)+(~a&borrowIn)+(b&borrowIn); 
//endmodule

//behavioral modeling
//module full_sub(input a, b, borrowIn, output reg diff, borrowOut);
//    always @(a, b, borrowIn)
//    begin
//        case({a, b, borrowIn})
//        3'b000: begin diff = 0; borrowOut = 0; end
//        3'b001: begin diff = 1; borrowOut = 1; end
//        3'b010: begin diff = 1; borrowOut = 1; end
//        3'b011: begin diff = 0; borrowOut = 1; end
//        3'b100: begin diff = 1; borrowOut = 0; end
//        3'b101: begin diff = 0; borrowOut = 0; end
//        3'b110: begin diff = 0; borrowOut = 0; end
//        3'b111: begin diff = 1; borrowOut = 1; end
//        endcase
//    end
//endmodule
