module vending_machine(
    input clk,
    input reset,
    input coin5,
    input coin10,
    output reg dispense
);

reg [4:0] amount;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        amount <= 0;
        dispense <= 0;
    end
    else
    begin
        dispense <= 0;

        if(coin5)
            amount <= amount + 5;
        else if(coin10)
            amount <= amount + 10;

        if(amount >= 10 && coin5)
        begin
            dispense <= 1;
            amount <= 0;
        end
        else if(amount >= 5 && coin10)
        begin
            dispense <= 1;
            amount <= 0;
        end
    end
end

endmodule