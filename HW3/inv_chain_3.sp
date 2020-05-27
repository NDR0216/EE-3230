************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv_chain_3
* View Name:     schematic
* Netlisted on:  Nov 29 01:33:03 2019
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
* Cell Name:    inv_chain_3
* View Name:    schematic
************************************************************************

.SUBCKT inv_chain_3 VDD VSS Vin Vout node1 node2
*.PININFO VDD:B VSS:B Vin:B Vout:B node1:B node2:B
MM8 node2 node1 VDD VDD P_18 W=1.5u L=180.00n m=37
MM7 node1 Vin VDD VDD P_18 W=1.5u L=180.00n
MM9 Vout node2 VDD VDD P_18 W=1.5u L=180.00n m=1374
MM1 node2 node1 VSS VSS N_18 W=500.0n L=180.00n m=37
MM2 Vout node2 VSS VSS N_18 W=500.0n L=180.00n m=1374
MM0 node1 Vin VSS VSS N_18 W=500.0n L=180.00n
CC0 Vout VSS 200p $[CP]
.ENDS

