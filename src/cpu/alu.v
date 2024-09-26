`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2024 01:36:18 PM
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu(
    input wire [7:0] operand1,
    input wire [7:0] operand2,
    input wire [4:0] opcode,
    output reg [7:0] result,
    output reg zero_flag,
    output reg carry_flag
    );
    
    localparam ADD = 4'b1000;
    localparam SUB = 4'b1001;
    
    always @(*) begin
        case (opcode)
            ADD: result = operand1 + operand2;
            SUB: result = operand1 - operand2;
            default: result = 8'b0;
        endcase
    end
endmodule
