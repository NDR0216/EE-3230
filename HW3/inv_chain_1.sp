************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv_chain_1
* View Name:     schematic
* Netlisted on:  Nov 29 01:16:01 2019
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
* Cell Name:    inv_chain_1
* View Name:    schematic
************************************************************************

.SUBCKT inv_chain_1 VDD VSS Vin Vout
*.PININFO VDD:B VSS:B Vin:B Vout:B
MM7 Vout Vin VDD VDD P_18 W=1.5u L=180.00n
MM0 Vout Vin VSS VSS N_18 W=500.0n L=180.00n
CC0 Vout VSS 200p $[CP]
.ENDS

