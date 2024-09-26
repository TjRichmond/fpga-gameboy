`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Tristan Richmond
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
    input wire [2:0] command,
    output reg [7:0] result,
    output reg zero_flag,
    output reg half_carry_flag,
    output reg carry_flag
    );
    
    localparam ADD = 3'b000;
    localparam ADC = 3'b001;
    localparam SUB = 3'b010;
    localparam SBC = 3'b011;
    localparam AND = 3'b100;
    localparam XOR = 3'b101;
    localparam OR  = 3'b110;
    localparam CP  = 3'b111;

    // Switch statement for each command
    always @(*) begin
        case (command)
            // Add command
            ADD: begin
                result = operand1 + operand2;
                zero_flag = (result == 8'b0) ? 1 : 0;
                half_carry_flag = 0;
                carry_flag = 0;
            end

            // Subtract command
            SUB: begin
                result = operand1 - operand2;
                zero_flag = (result == 8'b0) ? 1 : 0;
                half_carry_flag = 0;
                carry_flag = 0;
            end

            // Bitwise AND command
            AND: begin
                result = operand1 & operand2;
                zero_flag = (result == 8'b0) ? 1 : 0;
                half_carry_flag = 0;
                carry_flag = 0;
            end

            // Bitwise exclusive OR command
            XOR: begin
                result = operand1 ^ operand2;
                zero_flag = (result == 8'b0) ? 1 : 0;
                half_carry_flag = 0;
                carry_flag = 0;
            end

            // Bitwise OR command
            OR:  begin
                result = operand1 | operand2;
                zero_flag = (result == 8'b0) ? 1 : 0;
                half_carry_flag = 0;
                carry_flag = 0;
            end

            // Compare command
            CP:  begin
                result = operand1 - operand2;
                zero_flag = (result == 8'b0) ? 1 : 0;
                half_carry_flag = 0;
                carry_flag = 0;
                result = 8'bx;
            end

            // Glitch case
            default: result = 8'b0;
        endcase
    end
endmodule
