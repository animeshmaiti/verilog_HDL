module testbench;

    reg clk;
    reg reset;
    wire [3:0] count;

    up_counter counter (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, testbench);

        clk = 0;
        reset = 0;
        
        #5 reset = 1; // Reset the counter
        #10 reset = 0;
        
        // Run simulation for multiple clock cycles
        repeat (40) begin
            #5 clk = ~clk;
        end

        $finish;
    end

endmodule
