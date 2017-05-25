//
///////////////////////////////////////////////////////////////////////////////////////////
// Copyright © 2010-2013, Xilinx, Inc.
// This file contains confidential and proprietary information of Xilinx, Inc. and is
// protected under U.S. and international copyright and other intellectual property laws.
///////////////////////////////////////////////////////////////////////////////////////////
//
// Disclaimer:
// This disclaimer is not a license and does not grant any rights to the materials
// distributed herewith. Except as otherwise provided in a valid license issued to
// you by Xilinx, and to the maximum extent permitted by applicable law: (1) THESE
// MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY
// DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
// INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,
// OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable
// (whether in contract or tort, including negligence, or under any other theory
// of liability) for any loss or damage of any kind or nature related to, arising
// under or in connection with these materials, including for any direct, or any
// indirect, special, incidental, or consequential loss or damage (including loss
// of data, profits, goodwill, or any type of loss or damage suffered as a result
// of any action brought by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-safe, or for use in any
// application requiring fail-safe performance, such as life-support or safety
// devices or systems, Class III medical devices, nuclear facilities, applications
// related to the deployment of airbags, or any other applications that could lead
// to death, personal injury, or severe property or environmental damage
// (individually and collectively, "Critical Applications"). Customer assumes the
// sole risk and liability of any use of Xilinx products in Critical Applications,
// subject only to applicable laws and regulations governing limitations on product
// liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
//
///////////////////////////////////////////////////////////////////////////////////////////
//
//
// Production definition of a 1K program for KCPSM6 in a 7-Series device using a
// RAMB18E1 primitive.
//
// Note: The complete 12-bit address bus is connected to KCPSM6 to facilitate future code
//       expansion with minimum changes being required to the hardware description.
//       Only the lower 10-bits of the address are actually used for the 1K address range
//       000 to 3FF hex.
//
// Program defined by 'PicoBlazeAssembly.fidex.psm'.
//
// Generated by KCPSM6 Assembler: 2017-05-23 23:04:26 .
//
// Assembler used ROM_form template: ROM_form_7S_1K_14March13.v
//
//
module MemoriaDeInstrucciones (
input  [11:0] address,
output [17:0] instruction,
input         enable,
input         clk);
//
//
wire [13:0] address_a;
wire [17:0] data_in_a;
wire [17:0] data_out_a;
wire [13:0] address_b;
wire [17:0] data_in_b;
wire [17:0] data_out_b;
wire        enable_b;
wire        clk_b;
wire [3:0]  we_b;
//
//
assign address_a = {address[9:0], 4'b1111};
assign instruction = data_out_a[17:0];
assign data_in_a = {16'h0000, address[11:10]};
//
assign address_b = 14'b11111111111111;
assign data_in_b = data_out_b[17:0];
assign enable_b = 1'b0;
assign we_b = 4'h0;
assign clk_b = 1'b0;
//  
//
RAMB18E1 # ( .READ_WIDTH_A              (18),
             .WRITE_WIDTH_A             (18),
             .DOA_REG                   (0),
             .INIT_A                    (16'b000000000000000000),
             .RSTREG_PRIORITY_A         ("REGCE"),
             .SRVAL_A                   (36'h000000000000000000),
             .WRITE_MODE_A              ("WRITE_FIRST"),
             .READ_WIDTH_B              (18),
             .WRITE_WIDTH_B             (18),
             .DOB_REG                   (0),
             .INIT_B                    (36'h000000000000000000),
             .RSTREG_PRIORITY_B         ("REGCE"),
             .SRVAL_B                   (36'h000000000000000000),
             .WRITE_MODE_B              ("WRITE_FIRST"),
             .INIT_FILE                 ("NONE"),
             .SIM_COLLISION_CHECK       ("ALL"),
             .RAM_MODE                  ("TDP"),
             .RDADDR_COLLISION_HWCONFIG ("DELAYED_WRITE"),
             .SIM_DEVICE                ("7SERIES"),
             .INIT_00                   (256'hD1022012D5432019D5452019D5022005D5521000150280011404130212011100),
             .INIT_01                   (256'h9603200715002012D3022007D2022007201DD0031001D4026007D543201BD550),
             .INIT_02                   (256'h000000000000000000000000000000009001D601900105602026D6532026D657),
             .INIT_03                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_04                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_05                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_06                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_07                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_08                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_09                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_0A                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_0B                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_0C                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_0D                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_0E                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_0F                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_10                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_11                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_12                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_13                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_14                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_15                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_16                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_17                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_18                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_19                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_1A                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_1B                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_1C                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_1D                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_1E                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_1F                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_20                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_21                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_22                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_23                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_24                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_25                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_26                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_27                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_28                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_29                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_2A                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_2B                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_2C                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_2D                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_2E                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_2F                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_30                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_31                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_32                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_33                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_34                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_35                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_36                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_37                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_38                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_39                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_3A                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_3B                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_3C                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_3D                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_3E                   (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INIT_3F                   (256'h201F000000000000000000000000000000000000000000000000000000000000),
             .INITP_00                  (256'h00000000000000000000000000000000000000000000A8DD22AAD6DDB7774200),
             .INITP_01                  (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INITP_02                  (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INITP_03                  (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INITP_04                  (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INITP_05                  (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INITP_06                  (256'h0000000000000000000000000000000000000000000000000000000000000000),
             .INITP_07                  (256'h8000000000000000000000000000000000000000000000000000000000000000))
 kcpsm6_rom( .ADDRARDADDR               (address_a),
             .ENARDEN                   (enable),
             .CLKARDCLK                 (clk),
             .DOADO                     (data_out_a[15:0]),
             .DOPADOP                   (data_out_a[17:16]),
             .DIADI                     (data_in_a[15:0]),
             .DIPADIP                   (data_in_a[17:16]),
             .WEA                       (2'b00),
             .REGCEAREGCE               (1'b0),
             .RSTRAMARSTRAM             (1'b0),
             .RSTREGARSTREG             (1'b0),
             .ADDRBWRADDR               (address_b),
             .ENBWREN                   (enable_b),
             .CLKBWRCLK                 (clk_b),
             .DOBDO                     (data_out_b[15:0]),
             .DOPBDOP                   (data_out_b[17:16]),
             .DIBDI                     (data_in_b[15:0]),
             .DIPBDIP                   (data_in_b[17:16]),
             .WEBWE                     (we_b),
             .REGCEB                    (1'b0),
             .RSTRAMB                   (1'b0),
             .RSTREGB                   (1'b0));
//
//
endmodule
//
////////////////////////////////////////////////////////////////////////////////////
//
// END OF FILE PicoBlaze.v
//
////////////////////////////////////////////////////////////////////////////////////
