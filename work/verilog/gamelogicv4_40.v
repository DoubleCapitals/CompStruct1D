/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gamelogicv4_40 (
    input clk,
    input rst,
    input [2:0] roundno,
    input reset,
    input [4:0] p1colours,
    input p1enter,
    input [4:0] p2colours,
    input p2enter,
    output reg [1:0] winner,
    output reg [7:0] debug
  );
  
  
  
  localparam ONE_p1 = 4'd0;
  localparam TWO_p1 = 4'd1;
  localparam THREE_p1 = 4'd2;
  localparam FOUR_p1 = 4'd3;
  localparam FIVE_p1 = 4'd4;
  localparam SIX_p1 = 4'd5;
  localparam SEVEN_p1 = 4'd6;
  localparam EIGHT_p1 = 4'd7;
  localparam NINE_p1 = 4'd8;
  localparam TEN_p1 = 4'd9;
  localparam WIN_p1 = 4'd10;
  localparam FAIL_p1 = 4'd11;
  
  reg [3:0] M_p1_d, M_p1_q = ONE_p1;
  localparam ONE_p2 = 4'd0;
  localparam TWO_p2 = 4'd1;
  localparam THREE_p2 = 4'd2;
  localparam FOUR_p2 = 4'd3;
  localparam FIVE_p2 = 4'd4;
  localparam SIX_p2 = 4'd5;
  localparam SEVEN_p2 = 4'd6;
  localparam EIGHT_p2 = 4'd7;
  localparam NINE_p2 = 4'd8;
  localparam TEN_p2 = 4'd9;
  localparam WIN_p2 = 4'd10;
  localparam FAIL_p2 = 4'd11;
  
  reg [3:0] M_p2_d, M_p2_q = ONE_p2;
  
  always @* begin
    M_p2_d = M_p2_q;
    M_p1_d = M_p1_q;
    
    debug = 1'h0;
    
    case (M_p1_q)
      ONE_p1: begin
        debug[4+3-:4] = 4'h1;
      end
      TWO_p1: begin
        debug[4+3-:4] = 4'h2;
      end
      THREE_p1: begin
        debug[4+3-:4] = 4'h3;
      end
      FOUR_p1: begin
        debug[4+3-:4] = 4'h4;
      end
      FIVE_p1: begin
        debug[4+3-:4] = 4'h5;
      end
      SIX_p1: begin
        debug[4+3-:4] = 4'h6;
      end
      SEVEN_p1: begin
        debug[4+3-:4] = 4'h7;
      end
      EIGHT_p1: begin
        debug[4+3-:4] = 4'h8;
      end
      NINE_p1: begin
        debug[4+3-:4] = 4'h9;
      end
      TEN_p1: begin
        debug[4+3-:4] = 4'ha;
      end
      WIN_p1: begin
        debug[4+3-:4] = 4'hf;
      end
      FAIL_p1: begin
        debug[4+3-:4] = 4'he;
      end
    endcase
    
    case (M_p2_q)
      ONE_p2: begin
        debug[0+3-:4] = 4'h1;
      end
      TWO_p2: begin
        debug[0+3-:4] = 4'h2;
      end
      THREE_p2: begin
        debug[0+3-:4] = 4'h3;
      end
      FOUR_p2: begin
        debug[0+3-:4] = 4'h4;
      end
      FIVE_p2: begin
        debug[0+3-:4] = 4'h5;
      end
      SIX_p2: begin
        debug[0+3-:4] = 4'h6;
      end
      SEVEN_p2: begin
        debug[0+3-:4] = 4'h7;
      end
      EIGHT_p2: begin
        debug[0+3-:4] = 4'h8;
      end
      NINE_p2: begin
        debug[0+3-:4] = 4'h9;
      end
      TEN_p2: begin
        debug[0+3-:4] = 4'ha;
      end
      WIN_p2: begin
        debug[0+3-:4] = 4'hf;
      end
      FAIL_p2: begin
        debug[0+3-:4] = 4'he;
      end
    endcase
    winner = 2'h0;
    
    case (M_p1_q)
      ONE_p1: begin
        
        case (roundno)
          3'h0: begin
            if (p1colours[3+0-:1]) begin
              M_p1_d = TWO_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = ONE_p1;
              end
            end
          end
          3'h1: begin
            if (p1colours[2+0-:1]) begin
              M_p1_d = TWO_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = ONE_p1;
              end
            end
          end
          3'h2: begin
            if (p1colours[0+0-:1]) begin
              M_p1_d = TWO_p1;
            end else begin
              if (p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = ONE_p1;
              end
            end
          end
          3'h3: begin
            if (p1colours[2+0-:1]) begin
              M_p1_d = TWO_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = ONE_p1;
              end
            end
          end
          3'h4: begin
            if (p1colours[4+0-:1]) begin
              M_p1_d = TWO_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = ONE_p1;
              end
            end
          end
          default: begin
            M_p1_d = ONE_p1;
          end
        endcase
      end
      TWO_p1: begin
        
        case (roundno)
          3'h0: begin
            if (p1colours[1+0-:1]) begin
              M_p1_d = THREE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = TWO_p1;
              end
            end
          end
          3'h1: begin
            if (p1colours[3+0-:1]) begin
              M_p1_d = THREE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = TWO_p1;
              end
            end
          end
          3'h2: begin
            if (p1colours[1+0-:1]) begin
              M_p1_d = THREE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = TWO_p1;
              end
            end
          end
          3'h3: begin
            if (p1colours[1+0-:1]) begin
              M_p1_d = THREE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = TWO_p1;
              end
            end
          end
          3'h4: begin
            if (p1colours[0+0-:1]) begin
              M_p1_d = THREE_p1;
            end else begin
              if (p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = TWO_p1;
              end
            end
          end
        endcase
      end
      THREE_p1: begin
        
        case (roundno)
          3'h0: begin
            if (p1colours[0+0-:1]) begin
              M_p1_d = FOUR_p1;
            end else begin
              if (p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = THREE_p1;
              end
            end
          end
          3'h1: begin
            if (p1colours[1+0-:1]) begin
              M_p1_d = FOUR_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = THREE_p1;
              end
            end
          end
          3'h2: begin
            if (p1colours[4+0-:1]) begin
              M_p1_d = FOUR_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = THREE_p1;
              end
            end
          end
          3'h3: begin
            if (p1colours[4+0-:1]) begin
              M_p1_d = FOUR_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = THREE_p1;
              end
            end
          end
          3'h4: begin
            if (p1colours[1+0-:1]) begin
              M_p1_d = FOUR_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = THREE_p1;
              end
            end
          end
        endcase
      end
      FOUR_p1: begin
        
        case (roundno)
          3'h0: begin
            if (p1colours[2+0-:1]) begin
              M_p1_d = FIVE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FOUR_p1;
              end
            end
          end
          3'h1: begin
            if (p1colours[0+0-:1]) begin
              M_p1_d = FIVE_p1;
            end else begin
              if (p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FOUR_p1;
              end
            end
          end
          3'h2: begin
            if (p1colours[2+0-:1]) begin
              M_p1_d = FIVE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FOUR_p1;
              end
            end
          end
          3'h3: begin
            if (p1colours[1+0-:1]) begin
              M_p1_d = FIVE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FOUR_p1;
              end
            end
          end
          3'h4: begin
            if (p1colours[3+0-:1]) begin
              M_p1_d = FIVE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FOUR_p1;
              end
            end
          end
        endcase
      end
      FIVE_p1: begin
        
        case (roundno)
          3'h0: begin
            if (p1colours[4+0-:1]) begin
              M_p1_d = SIX_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FIVE_p1;
              end
            end
          end
          3'h1: begin
            if (p1colours[2+0-:1]) begin
              M_p1_d = SIX_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FIVE_p1;
              end
            end
          end
          3'h2: begin
            if (p1colours[3+0-:1]) begin
              M_p1_d = SIX_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FIVE_p1;
              end
            end
          end
          3'h3: begin
            if (p1colours[3+0-:1]) begin
              M_p1_d = SIX_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FIVE_p1;
              end
            end
          end
          3'h4: begin
            if (p1colours[2+0-:1]) begin
              M_p1_d = SIX_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = FIVE_p1;
              end
            end
          end
        endcase
      end
      SIX_p1: begin
        
        case (roundno)
          3'h0: begin
            if (p1colours[3+0-:1]) begin
              M_p1_d = SEVEN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SIX_p1;
              end
            end
          end
          3'h1: begin
            if (p1colours[4+0-:1]) begin
              M_p1_d = SEVEN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SIX_p1;
              end
            end
          end
          3'h2: begin
            if (p1colours[0+0-:1]) begin
              M_p1_d = SEVEN_p1;
            end else begin
              if (p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SIX_p1;
              end
            end
          end
          3'h3: begin
            if (p1colours[4+0-:1]) begin
              M_p1_d = SEVEN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SIX_p1;
              end
            end
          end
          3'h4: begin
            if (p1colours[4+0-:1]) begin
              M_p1_d = SEVEN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SIX_p1;
              end
            end
          end
        endcase
      end
      SEVEN_p1: begin
        
        case (roundno)
          3'h0: begin
            if (p1enter) begin
              M_p1_d = WIN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1]) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SEVEN_p1;
              end
            end
          end
          3'h1: begin
            if (p1enter) begin
              M_p1_d = WIN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1]) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SEVEN_p1;
              end
            end
          end
          3'h2: begin
            if (p1colours[2+0-:1]) begin
              M_p1_d = EIGHT_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SEVEN_p1;
              end
            end
          end
          3'h3: begin
            if (p1colours[0+0-:1]) begin
              M_p1_d = EIGHT_p1;
            end else begin
              if (p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SEVEN_p1;
              end
            end
          end
          3'h4: begin
            if (p1colours[0+0-:1]) begin
              M_p1_d = EIGHT_p1;
            end else begin
              if (p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = SEVEN_p1;
              end
            end
          end
        endcase
      end
      EIGHT_p1: begin
        
        case (roundno)
          3'h2: begin
            if (p1enter) begin
              M_p1_d = WIN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1]) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = EIGHT_p1;
              end
            end
          end
          3'h3: begin
            if (p1colours[2+0-:1]) begin
              M_p1_d = NINE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = EIGHT_p1;
              end
            end
          end
          3'h4: begin
            if (p1colours[4+0-:1]) begin
              M_p1_d = NINE_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = EIGHT_p1;
              end
            end
          end
        endcase
      end
      NINE_p1: begin
        
        case (roundno)
          3'h3: begin
            if (p1enter) begin
              M_p1_d = WIN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1]) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = NINE_p1;
              end
            end
          end
          3'h4: begin
            if (p1colours[1+0-:1]) begin
              M_p1_d = TEN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1] || p1enter) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = NINE_p1;
              end
            end
          end
        endcase
      end
      TEN_p1: begin
        
        case (roundno)
          3'h4: begin
            if (p1enter) begin
              M_p1_d = WIN_p1;
            end else begin
              if (p1colours[0+0-:1] || p1colours[1+0-:1] || p1colours[2+0-:1] || p1colours[3+0-:1] || p1colours[4+0-:1]) begin
                M_p1_d = FAIL_p1;
              end else begin
                M_p1_d = TEN_p1;
              end
            end
          end
        endcase
      end
      WIN_p1: begin
        M_p1_d = WIN_p1;
        winner = 2'h1;
      end
      FAIL_p1: begin
        M_p1_d = FAIL_p1;
      end
    endcase
    
    case (M_p2_q)
      ONE_p2: begin
        
        case (roundno)
          3'h0: begin
            if (p2colours[3+0-:1]) begin
              M_p2_d = TWO_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = ONE_p2;
              end
            end
          end
          3'h1: begin
            if (p2colours[2+0-:1]) begin
              M_p2_d = TWO_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = ONE_p2;
              end
            end
          end
          3'h2: begin
            if (p2colours[0+0-:1]) begin
              M_p2_d = TWO_p2;
            end else begin
              if (p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = ONE_p2;
              end
            end
          end
          3'h3: begin
            if (p2colours[2+0-:1]) begin
              M_p2_d = TWO_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = ONE_p2;
              end
            end
          end
          3'h4: begin
            if (p2colours[4+0-:1]) begin
              M_p2_d = TWO_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = ONE_p2;
              end
            end
          end
          default: begin
            M_p2_d = ONE_p2;
          end
        endcase
      end
      TWO_p2: begin
        
        case (roundno)
          3'h0: begin
            if (p2colours[1+0-:1]) begin
              M_p2_d = THREE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = TWO_p2;
              end
            end
          end
          3'h1: begin
            if (p2colours[3+0-:1]) begin
              M_p2_d = THREE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = TWO_p2;
              end
            end
          end
          3'h2: begin
            if (p2colours[1+0-:1]) begin
              M_p2_d = THREE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = TWO_p2;
              end
            end
          end
          3'h3: begin
            if (p2colours[1+0-:1]) begin
              M_p2_d = THREE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = TWO_p2;
              end
            end
          end
          3'h4: begin
            if (p2colours[0+0-:1]) begin
              M_p2_d = THREE_p2;
            end else begin
              if (p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = TWO_p2;
              end
            end
          end
        endcase
      end
      THREE_p2: begin
        
        case (roundno)
          3'h0: begin
            if (p2colours[0+0-:1]) begin
              M_p2_d = FOUR_p2;
            end else begin
              if (p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = THREE_p2;
              end
            end
          end
          3'h1: begin
            if (p2colours[1+0-:1]) begin
              M_p2_d = FOUR_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = THREE_p2;
              end
            end
          end
          3'h2: begin
            if (p2colours[4+0-:1]) begin
              M_p2_d = FOUR_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = THREE_p2;
              end
            end
          end
          3'h3: begin
            if (p2colours[4+0-:1]) begin
              M_p2_d = FOUR_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = THREE_p2;
              end
            end
          end
          3'h4: begin
            if (p2colours[1+0-:1]) begin
              M_p2_d = FOUR_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = THREE_p2;
              end
            end
          end
        endcase
      end
      FOUR_p2: begin
        
        case (roundno)
          3'h0: begin
            if (p2colours[2+0-:1]) begin
              M_p2_d = FIVE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FOUR_p2;
              end
            end
          end
          3'h1: begin
            if (p2colours[0+0-:1]) begin
              M_p2_d = FIVE_p2;
            end else begin
              if (p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FOUR_p2;
              end
            end
          end
          3'h2: begin
            if (p2colours[2+0-:1]) begin
              M_p2_d = FIVE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FOUR_p2;
              end
            end
          end
          3'h3: begin
            if (p2colours[1+0-:1]) begin
              M_p2_d = FIVE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FOUR_p2;
              end
            end
          end
          3'h4: begin
            if (p2colours[3+0-:1]) begin
              M_p2_d = FIVE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FOUR_p2;
              end
            end
          end
        endcase
      end
      FIVE_p2: begin
        
        case (roundno)
          3'h0: begin
            if (p2colours[4+0-:1]) begin
              M_p2_d = SIX_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FIVE_p2;
              end
            end
          end
          3'h1: begin
            if (p2colours[2+0-:1]) begin
              M_p2_d = SIX_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FIVE_p2;
              end
            end
          end
          3'h2: begin
            if (p2colours[3+0-:1]) begin
              M_p2_d = SIX_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FIVE_p2;
              end
            end
          end
          3'h3: begin
            if (p2colours[3+0-:1]) begin
              M_p2_d = SIX_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FIVE_p2;
              end
            end
          end
          3'h4: begin
            if (p2colours[2+0-:1]) begin
              M_p2_d = SIX_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = FIVE_p2;
              end
            end
          end
        endcase
      end
      SIX_p2: begin
        
        case (roundno)
          3'h0: begin
            if (p2colours[3+0-:1]) begin
              M_p2_d = SEVEN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SIX_p2;
              end
            end
          end
          3'h1: begin
            if (p2colours[4+0-:1]) begin
              M_p2_d = SEVEN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SIX_p2;
              end
            end
          end
          3'h2: begin
            if (p2colours[0+0-:1]) begin
              M_p2_d = SEVEN_p2;
            end else begin
              if (p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SIX_p2;
              end
            end
          end
          3'h3: begin
            if (p2colours[4+0-:1]) begin
              M_p2_d = SEVEN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SIX_p2;
              end
            end
          end
          3'h4: begin
            if (p2colours[4+0-:1]) begin
              M_p2_d = SEVEN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SIX_p2;
              end
            end
          end
        endcase
      end
      SEVEN_p2: begin
        
        case (roundno)
          3'h0: begin
            if (p2enter) begin
              M_p2_d = WIN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1]) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SEVEN_p2;
              end
            end
          end
          3'h1: begin
            if (p2enter) begin
              M_p2_d = WIN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1]) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SEVEN_p2;
              end
            end
          end
          3'h2: begin
            if (p2colours[2+0-:1]) begin
              M_p2_d = EIGHT_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SEVEN_p2;
              end
            end
          end
          3'h3: begin
            if (p2colours[0+0-:1]) begin
              M_p2_d = EIGHT_p2;
            end else begin
              if (p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SEVEN_p2;
              end
            end
          end
          3'h4: begin
            if (p2colours[0+0-:1]) begin
              M_p2_d = EIGHT_p2;
            end else begin
              if (p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = SEVEN_p2;
              end
            end
          end
        endcase
      end
      EIGHT_p2: begin
        
        case (roundno)
          3'h2: begin
            if (p2enter) begin
              M_p2_d = WIN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1]) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = EIGHT_p2;
              end
            end
          end
          3'h3: begin
            if (p2colours[2+0-:1]) begin
              M_p2_d = NINE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = EIGHT_p2;
              end
            end
          end
          3'h4: begin
            if (p2colours[4+0-:1]) begin
              M_p2_d = NINE_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = EIGHT_p2;
              end
            end
          end
        endcase
      end
      NINE_p2: begin
        
        case (roundno)
          3'h3: begin
            if (p2enter) begin
              M_p2_d = WIN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1]) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = NINE_p2;
              end
            end
          end
          3'h4: begin
            if (p2colours[1+0-:1]) begin
              M_p2_d = TEN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1] || p2enter) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = NINE_p2;
              end
            end
          end
        endcase
      end
      TEN_p2: begin
        
        case (roundno)
          3'h4: begin
            if (p2enter) begin
              M_p2_d = WIN_p2;
            end else begin
              if (p2colours[0+0-:1] || p2colours[1+0-:1] || p2colours[2+0-:1] || p2colours[3+0-:1] || p2colours[4+0-:1]) begin
                M_p2_d = FAIL_p2;
              end else begin
                M_p2_d = TEN_p2;
              end
            end
          end
        endcase
      end
      WIN_p2: begin
        M_p2_d = WIN_p2;
        winner = 2'h2;
      end
      FAIL_p2: begin
        M_p2_d = FAIL_p2;
      end
    endcase
    if (reset) begin
      M_p1_d = ONE_p1;
      M_p2_d = ONE_p2;
    end
    if (M_p1_q == FAIL_p1 && M_p2_q == FAIL_p2) begin
      winner = 2'h3;
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_p1_q <= 1'h0;
      M_p2_q <= 1'h0;
    end else begin
      M_p1_q <= M_p1_d;
      M_p2_q <= M_p2_d;
    end
  end
  
endmodule