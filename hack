#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "D:\digital_design\iverilog\lib\ivl\system.vpi";
:vpi_module "D:\digital_design\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "D:\digital_design\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "D:\digital_design\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "D:\digital_design\iverilog\lib\ivl\va_math.vpi";
S_000001e9c8097e10 .scope module, "hack_tb" "hack_tb" 2 3;
 .timescale 0 0;
v000001e9c809ef20_0 .var "a", 0 0;
v000001e9c809bc40_0 .net "b", 0 0, L_000001e9c7f030e0;  1 drivers
S_000001e9c7f03890 .scope module, "y" "hack" 2 8, 3 1 0, S_000001e9c8097e10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "in";
    .port_info 1 /OUTPUT 1 "out";
L_000001e9c7f030e0 .functor NOT 1, v000001e9c809ef20_0, C4<0>, C4<0>, C4<0>;
v000001e9c7f03540_0 .net "in", 0 0, v000001e9c809ef20_0;  1 drivers
v000001e9c809ee80_0 .net "out", 0 0, L_000001e9c7f030e0;  alias, 1 drivers
    .scope S_000001e9c8097e10;
T_0 ;
    %vpi_call 2 11 "$dumpfile", "hack.vcd" {0 0 0};
    %vpi_call 2 12 "$dumpvars", 32'sb00000000000000000000000000000000, S_000001e9c8097e10 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000001e9c809ef20_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000001e9c809ef20_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000001e9c809ef20_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000001e9c809ef20_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000001e9c809ef20_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000001e9c809ef20_0, 0, 1;
    %delay 10, 0;
    %vpi_call 2 26 "$finish" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hack_tb.v";
    "hack.v";
