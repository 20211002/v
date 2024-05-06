`timescale 1ns / 1ps
//gate level modeling
//module half_sub(input a, b, output diff, borrow);
//    xor gate_1(diff, a, b);
//    and gate_2(borrow, ~a, b);
//endmodule

//module half_sub(input a, b, output diff, borrow);
//    wire wire_1;
//    not gate_1(wire_1, a);
//    xor gate_2(diff, a, b);
//    and gate_3(borrow, wire_1, b);
//endmodule

//data flow level modeling
//module half_sub(input a, b, output diff, borrow);
//    assign diff = (~a&b)+(a&~b);
//    assign borrow = (~a)&b;
//endmodule

//behavioral modeling
//module half_sub(input a, b, output reg diff, borrow);
//    always @(a, b)
//    begin
//        case({a, b})
//        2'b00: begin diff = 0; borrow = 0; end
//        2'b01: begin diff = 1; borrow = 1; end
//        2'b10: begin diff = 1; borrow = 0; end
//        2'b11: begin diff = 0; borrow = 0; end
//        endcase
//    end
//endmodule