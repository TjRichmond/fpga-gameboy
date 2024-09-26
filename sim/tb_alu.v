`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 01:04:12 AM
// Design Name: 
// Module Name: tb_alu
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


module tb_alu();

    reg [7:0]num1;
    reg [7:0]num2;
    reg [2:0]cmd;
    wire [7:0]out;
    wire flagZero;
    wire flagCarry;
    wire flagHalfCarry;

    alu gbAlu(num1, num2, cmd, out, flagZero, flagCarry, flagHalfCarry);
    
    initial
        begin
        // Test 1: Addition
        num1 <= 8'd15;
        num2 <= 8'd10;
        cmd <= 3'b000;
        #10;
        
        // Test 2: Subtraction
        num1 <= 8'd20;
        num2 <= 8'd5;
        cmd <= 3'b010;
        #10;
        
        // Test 3: AND operation
        num1 <= 8'hFF;
        num2 <= 8'h0F;
        cmd <= 3'b100;
        #10;
        
        // Test 4: OR operation
        num1 <= 8'hF0;
        num2 <= 8'h0F;
        cmd <= 3'b101;
        #10;
        
        // Test 5: XOR operation
        num1 <= 8'hAA;
        num2 <= 8'h55;
        cmd <= 3'b110;
        #10;
        
        // Test 6: Compare operation (CP)
        num1 <= 8'd30;
        num2 <= 8'd30;
        cmd <= 3'b111;
        #10;

        // Add more test cases if needed
        $finish;  // End the simulation

        end
endmodule
