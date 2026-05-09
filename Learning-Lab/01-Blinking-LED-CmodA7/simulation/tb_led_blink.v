//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2026 05:01:40 PM
// Design Name: 
// Module Name: tb_led_blink
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


`timescale 1ns / 1ps

module tb_led_blink();

    // 1. Inputs are 'reg', Outputs are 'wire'
    reg clk;
    wire led;

    // 2. Instantiate the Unit Under Test (UUT)
    led_blink uut (
        .clk(clk),
        .led(led)
    );

    // 3. Clock Generation (12MHz for Cmod Artix-7)
    // Period = 1 / 12,000,000 = ~83.33 ns
    // Half period = 41.66 ns
    initial begin
        clk = 0;
        forever #41.66 clk = ~clk;
    end

    // 4. Stimulus / Observation
    initial begin
        // Let the simulation run for a while
        // Note: To see the LED toggle in waves, you would need to run
        // for roughly 500,000,000 ns (0.5s).
        // For a quick test, just watch the 'counter' increment.
        
        $display("Starting simulation...");
        
        #1000; // Simulate for 1000ns to see counter moving
        
        $display("Current Counter Value: %d", uut.counter);
        
        // If you want to see the LED toggle without waiting forever,
        // you can force the counter to a value near the limit:
        #100;
        force uut.counter = 26'd5999990; 
        #1000; // Now watch the LED toggle as it hits 6,000,000
        release uut.counter;

        $finish;
    end

endmodule