module shift_tb;
  reg clk,data_in,en,rst;
  wire [7:0] out;
  
  shift s1(
    .clk(clk),
    .rst(rst),
    .we(en),
    .in(data_in),
    .out(out)
  );
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
  end
  
  initial begin 
  	clk = 1'b0;
    en = 1'b1;
    rst = 1'b1;
    #25;
    rst = 1'b0;
    #80;
    en = 1'b0;
    #121;
    en = 1'b1;
    #152;
    en = 1'b0;
    #111;
    en = 1'b1;
    #25;
    en = 1'b0;
  end
  
  always 
   #10 clk = ~clk;
 
  initial begin 
    if(rst)
      @(negedge clk) data_in <= 0;
    #5;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 1;
    @(negedge clk) data_in <= 0;
    @(negedge clk) data_in <= 1;
    #1000;
    $finish;
  end
  
endmodule