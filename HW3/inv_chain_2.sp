************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv_chain_2
* View Name:     schematic
* Netlisted on:  Nov 29 01:17:22 2019
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
* Cell Name:    inv_chain_2
* View Name:    schematic
************************************************************************

.SUBCKT inv_chain_2 VDD VSS Vin Vout node1
*.PININFO VDD:B VSS:B Vin:B Vout:B node1:B
MM8 Vout node1 VDD VDD P_18 W=1.5u L=180.00n m=226
MM7 node1 Vin VDD VDD P_18 W=1.5u L=180.00n
MM1 Vout node1 VSS VSS N_18 W=500.0n L=180.00n m=226
MM0 node1 Vin VSS VSS N_18 W=500.0n L=180.00n
CC0 Vout VSS 200p $[CP]
.ENDS

