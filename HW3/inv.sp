************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv
* View Name:     schematic
* Netlisted on:  Nov 28 01:55:29 2019
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
* Cell Name:    inv
* View Name:    schematic
************************************************************************

.SUBCKT inv VSS VDD Vin Vout
*.PININFO GND:B VDD:B Vin:B Vout:B
MM1 Vout Vin VDD VDD P_18 W=1.5u L=180.00n
MM0 Vout Vin VSS VSS N_18 W=500n L=180n
.ENDS

