************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW1
* Top Cell Name: inv
* View Name:     schematic
* Netlisted on:  Oct  4 07:18:41 2019
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
* Library Name: HW1
* Cell Name:    inv
* View Name:    schematic
************************************************************************

.SUBCKT inv VDD VSS Vin Vout
*.PININFO VDD:B VSS:B Vin:B Vout:B
CC0 Vout VSS 150.00f $[CP]
MM1 Vout Vin VSS VSS N_18 W=250.00n L=180.00n
MM0 Vout Vin VDD VDD P_18 W=250.00n L=180.00n
.ENDS

