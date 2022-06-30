`timescale 1ms/1ps

module rand_gen(output real rand_out);

    import test_package::*;

    parameter        SAMPLING_TIME = 1; 

    bit        sampling_clock;
    real       rand_num;
    
    always sampling_clock = #(SAMPLING_TIME) ~sampling_clock;

    //1 ms period betweeen two numbers
    always @(sampling_clock) begin
        rand_num = frand();
    end

    assign rand_out = rand_num;

endmodule