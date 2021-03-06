`timescale 1ns / 1ps

module kb_code
    #(parameter W_SIZE=2)//cantidad de palabras en FIFO
   (
    input wire clk, reset,
    input wire ps2d,ps2c,rd_key_code,
    output reg [7:0] key_code,
    output reg kb_buf_empty
   );

   localparam BRK=8'hf0; // break code, indica cuando una tecla es soltada  

   // declaración de estados
   localparam
      wait_brk = 1'b0,
      get_code = 1'b1;
   
    //variables
  reg state_reg, state_next;
  wire [7:0] scan_out;
  reg got_code_tick;
  wire scan_done_tick;

   // body
   //====================================================
   // instantiation
   //====================================================
   // instantiate ps2 receiver
   ps2_rx ps2_rx_unit
      (.clk(clk), .reset(reset), .rx_en(1'b1),
       .ps2d(ps2d), .ps2c(ps2c),
       .rx_done_tick(scan_done_tick), .dout(scan_out));

   //====================================================
   // FSM obtiene el scan_code luego de que el FO es recibido
   //====================================================
   // registros de estado
   always @(posedge clk, posedge reset)
      if (reset)
         state_reg <= wait_brk;
      else
         state_reg <= state_next;

   // lógica del estado siguiente
   always @*
   begin
      got_code_tick= 1'b0;
      state_next = state_reg;
      case (state_reg)
         wait_brk:  //se espera por el FO del break code
            if (scan_done_tick && scan_out==BRK) begin
               state_next = get_code;
               key_code=0;end
         get_code: // obtiene el seguiente scan_code
               if (scan_done_tick)
               begin
               got_code_tick=1'b1;
               state_next=get_code;
               key_code=scan_out;
               end
               else if(rd_key_code)begin
               state_next=wait_brk;
               key_code=0;
               end
      endcase
   end
   


   
   
endmodule
