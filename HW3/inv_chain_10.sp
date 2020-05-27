************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv_chain_10
* View Name:     schematic
* Netlisted on:  Nov 29 05:09:55 2019
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
* Cell Name:    inv_chain_10
* View Name:    schematic
************************************************************************

.SUBCKT inv_chain_10 VDD VSS Vin Vout node1 node2 node3 node4 node5 node6 
+ node7 node8 node9
*.PININFO VDD:B VSS:B Vin:B Vout:B node1:B node2:B node3:B node4:B node5:B 
*.PININFO node6:B node7:B node8:B node9:B
MM16 node9 node8 VDD VDD P_18 W=1.5u L=180.00n m=5827
MM18 Vout node9 VDD VDD P_18 W=1.5u L=180.00n m=17224
MM14 node8 node7 VDD VDD P_18 W=1.5u L=180.00n m=1971
MM11 node5 node4 VDD VDD P_18 W=1.5u L=180.00n m=76
MM12 node6 node5 VDD VDD P_18 W=1.5u L=180.00n m=226
MM10 node4 node3 VDD VDD P_18 W=38.74u L=180.00n
MM13 node7 node6 VDD VDD P_18 W=1.5u L=180.00n m=667
MM8 node2 node1 VDD VDD P_18 W=4.43u L=180.00n
MM7 node1 Vin VDD VDD P_18 W=1.5u L=180.00n
MM9 node3 node2 VDD VDD P_18 W=13.11u L=180.00n
MM17 node9 node8 VSS VSS N_18 W=500.0n L=180.00n m=5827
MM19 Vout node9 VSS VSS N_18 W=500.0n L=180.00n m=17224
MM15 node8 node7 VSS VSS N_18 W=500.0n L=180.00n m=1971
MM1 node2 node1 VSS VSS N_18 W=1.48u L=180.00n
MM6 node7 node6 VSS VSS N_18 W=500.0n L=180.00n m=667
MM5 node6 node5 VSS VSS N_18 W=500.0n L=180.00n m=226
MM4 node5 node4 VSS VSS N_18 W=38,17u L=180.00n
MM3 node4 node3 VSS VSS N_18 W=12.91u L=180.00n
MM2 node3 node2 VSS VSS N_18 W=4.37u L=180.00n
MM0 node1 Vin VSS VSS N_18 W=500.0n L=180.00n
CC0 Vout VSS 200p $[CP]
.ENDS

