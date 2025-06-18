module led_flash(
    input clk,
    input rst_n,
    output reg led
);
    reg [25:0] cnt;
    always @ (posedge clk or negedge rst_n)
    begin
        if (!rst_n)
            cnt <= 26'd0;
        else if (cnt < 26'd49_999_999)
            cnt <= cnt + 1'b1;
        else
            cnt <= 26'd0;
    end

    always @ (posedge clk or negedge rst_n)
    begin
        if (!rst_n)
            led <= 1'b0;
        else if (cnt == 26'd49_999_999)
            led <= ~led;
        else
        led <= led;
    end
    
endmodule