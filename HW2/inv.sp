************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW2
* Top Cell Name: inv
* View Name:     schematic
* Netlisted on:  Oct 29 23:00:12 2019
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
* Library Name: HW2
* Cell Name:    inv
* View Name:    schematic
************************************************************************

.SUBCKT inv VDD VSS Vin Vout
*.PININFO VDD:B VSS:B Vin:B Vout:B
MM1 Vout Vin VSS VSS N_18 W=1.8u L=200.0n
MM0 Vout Vin VDD VDD P_18 W=Wp L=200.0n
.ENDS

