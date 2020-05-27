************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv_chain_4
* View Name:     schematic
* Netlisted on:  Nov 29 01:36:31 2019
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
* Cell Name:    inv_chain_4
* View Name:    schematic
************************************************************************

.SUBCKT inv_chain_4 VDD VSS Vin Vout node1 node2 node3
*.PININFO VDD:B VSS:B Vin:B Vout:B node1:B node2:B node3:B
MM10 Vout node3 VDD VDD P_18 W=1.5u L=180.00n m=3389
MM8 node2 node1 VDD VDD P_18 W=22.88u L=180.00n
MM7 node1 Vin VDD VDD P_18 W=1.5u L=180.00n
MM9 node3 node2 VDD VDD P_18 W=1.5u L=180.00n m=226
MM1 node2 node1 VSS VSS N_18 W=7.63u L=180.00n
MM3 Vout node3 VSS VSS N_18 W=500.0n L=180.00n m=3389
MM2 node3 node2 VSS VSS N_18 W=500.0n L=180.00n m=226
MM0 node1 Vin VSS VSS N_18 W=500.0n L=180.00n
CC0 Vout VSS 200p $[CP]
.ENDS

