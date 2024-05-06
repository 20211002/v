`timescale 1ns / 1ps
//gate level modeling
//module full_adder(input a, b, carryIn, output sum, carryOut);
//    wire wire_1, wire_2, wire_3;
//    and gate_1(wire_1, a, b);
//    and gate_2(wire_2, carryIn, b);
//    and gate_3(wire_3, a, carryIn);
//    or gate_4(carryOut, wire_1, wire_2, wire_3);
//    xor gate_5(sum, a, b, carryIn);
//endmodule

//data flow level modeling
//module full_adder(input a, b, carryIn, output sum, carryOut);
//    assign {carryOut, sum} = a+b+carryIn;
//endmodule

//behavioral modeling
//module full_adder(input a, b, carryIn, output reg sum, carryOut);
//    always @(a, b, carryIn)
//    begin
//        case({a, b, carryIn})
//        3'b000: begin sum = 0; carryOut = 0; end
//        3'b001: begin sum = 1; carryOut = 0; end
//        3'b010: begin sum = 1; carryOut = 0; end
//        3'b011: begin sum = 0; carryOut = 1; end
//        3'b100: begin sum = 1; carryOut = 0; end
//        3'b101: begin sum = 0; carryOut = 1; end
//        3'b110: begin sum = 0; carryOut = 1; end
//        3'b111: begin sum = 1; carryOut = 1; end
//        endcase
//    end
//endmodule
