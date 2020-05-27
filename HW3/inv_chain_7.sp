************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv_chain_7
* View Name:     schematic
* Netlisted on:  Nov 29 01:43:07 2019
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
* Cell Name:    inv_chain_7
* View Name:    schematic
************************************************************************

.SUBCKT inv_chain_7 VDD VSS Vin Vout node1 node2 node3 node4 node5 node6
*.PININFO VDD:B VSS:B Vin:B Vout:B node1:B node2:B node3:B node4:B node5:B 
*.PININFO node6:B
MM11 node5 node4 VDD VDD P_18 W=1.5u L=180.00n m=489
MM12 node6 node5 VDD VDD P_18 W=1.5u L=180.00n m=2301
MM10 node4 node3 VDD VDD P_18 W=1.5u L=180.00n m=104
MM13 Vout node6 VDD VDD P_18 W=1.5u L=180.00n m=10825
MM8 node2 node1 VDD VDD P_18 W=7.05u L=180.00n
MM7 node1 Vin VDD VDD P_18 W=1.5u L=180.00n
MM9 node3 node2 VDD VDD P_18 W=33.18u L=180.00n
MM1 node2 node1 VSS VSS N_18 W=2.35u L=180.00n
MM6 Vout node6 VSS VSS N_18 W=500.0n L=180.00n m=10825
MM5 node6 node5 VSS VSS N_18 W=500.0n L=180.00n m=2301
MM4 node5 node4 VSS VSS N_18 W=500.0n L=180.00n m=489
MM3 node4 node3 VSS VSS N_18 W=52.02u L=180.00n
MM2 node3 node2 VSS VSS N_18 W=11.06u L=180.00n
MM0 node1 Vin VSS VSS N_18 W=500.0n L=180.00n
CC0 Vout VSS 200p $[CP]
.ENDS

