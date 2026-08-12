`timescale 1ns/1ps

module johnson_counter_tb;

reg clk;
reg reset;

wire [3:0] q;

// Instantiate Johnson Counter
johnson_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    // Run for 8 states
    #80;

    $finish;
end

initial
begin
    $monitor("Time=%0t | Johnson Counter = %b",
             $time, q);
end

endmodule