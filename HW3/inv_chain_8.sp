************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv_chain_8
* View Name:     schematic
* Netlisted on:  Nov 29 01:44:45 2019
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM



************************************************************************
* Library Name: HW3
* Cell Name:    inv_chain_8
* View Name:    schematic
************************************************************************

.SUBCKT inv_chain_8 VDD VSS Vin Vout node1 node2 node3 node4 node5 node6 node7
*.PININFO VDD:B VSS:B Vin:B Vout:B node1:B node2:B node3:B node4:B node5:B 
*.PININFO node6:B node7:B
MM19 node2 node1 VDD VDD P_18 W=5.81u L=180.00n
MM14 Vout node7 VDD VDD P_18 W=1.5u L=180.00n m=13136
MM11 node5 node4 VDD VDD P_18 W=1.5u L=180.00n m=226
MM12 node6 node5 VDD VDD P_18 W=1.5u L=180.00n m=874
MM10 node4 node3 VDD VDD P_18 W=87.33u L=180.00n
MM13 node7 node6 VDD VDD P_18 W=1.5u L=180.00n m=3389
MM7 node1 Vin VDD VDD P_18 W=1.5u L=180.00n
MM9 node3 node2 VDD VDD P_18 W=22.53u L=180.00n
MM15 Vout node7 VSS VSS N_18 W=500.0n L=180.00n m=13136
MM1 node2 node1 VSS VSS N_18 W=1.94u L=180.00n
MM6 node7 node6 VSS VSS N_18 W=500.0n L=180.00n m=3389
MM5 node6 node5 VSS VSS N_18 W=500.0n L=180.00n m=874
MM4 node5 node4 VSS VSS N_18 W=500.0n L=180.00n m=226
MM3 node4 node3 VSS VSS N_18 W=29.11u L=180.00n
MM2 node3 node2 VSS VSS N_18 W=7.51u L=180.00n
MM0 node1 Vin VSS VSS N_18 W=500.0n L=180.00n
CC0 Vout VSS 200p $[CP]
.ENDS

