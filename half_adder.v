`timescale 1ns / 1ps

//gate level modeling
//module half_adder(input a, b, output sum, carry);
//    xor gate_1(sum, a, b);
//    and gate_2(carry, a, b);
//endmodule

//data flow level modeling
//module half_adder(input a, b, output sum, carry);
//    assign sum = (~a&b)+(a&~b);
//    assign carry = a&b;
//endmodule

//behavioral modeling
//module half_adder(input a, b, output reg sum, carry);
//    always @(a, b)
//    begin
//        case({a, b})
//        2'b00: begin sum = 0; carry = 0; end
//        2'b01: begin sum = 1; carry = 0; end
//        2'b10: begin sum = 1; carry = 0; end
//        2'b11: begin sum = 0; carry = 1; end
//        endcase
//    end
//endmodule