************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv_chain_6
* View Name:     schematic
* Netlisted on:  Nov 29 01:41:33 2019
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
* Cell Name:    inv_chain_6
* View Name:    schematic
************************************************************************

.SUBCKT inv_chain_6 VDD VSS Vin Vout node1 node2 node3 node4 node5
*.PININFO VDD:B VSS:B Vin:B Vout:B node1:B node2:B node3:B node4:B node5:B
MM11 node5 node4 VDD VDD P_18 W=1.5u L=180.00n m=1374
MM12 Vout node5 VDD VDD P_18 W=1.5u L=180.00n m=8363
MM10 node4 node3 VDD VDD P_18 W=1.5u L=180.00n m=226
MM8 node2 node1 VDD VDD P_18 W=9.13u L=180.00n
MM7 node1 Vin VDD VDD P_18 W=1.5u L=180.00n
MM9 node3 node2 VDD VDD P_18 W=55.59u L=180.00n
MM1 node2 node1 VSS VSS N_18 W=3.04u L=180.00n
MM5 Vout node5 VSS VSS N_18 W=500.0n L=180.00n m=8363
MM4 node5 node4 VSS VSS N_18 W=500.0n L=180.00n m=1374
MM3 node4 node3 VSS VSS N_18 W=500.0n L=180.00n m=226
MM2 node3 node2 VSS VSS N_18 W=18.53u L=180.00n
MM0 node1 Vin VSS VSS N_18 W=500.0n L=180.00n
CC0 Vout VSS 200p $[CP]
.ENDS

