************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW2
* Top Cell Name: NAND3
* View Name:     schematic
* Netlisted on:  Oct 30 08:23:17 2019
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
* Cell Name:    NAND3
* View Name:    schematic
************************************************************************

.SUBCKT NAND3 GND VDD Vin Vout
*.PININFO GND:B VDD:B Vin:B Vout:B
MM5 Vout Vin VDD VDD P_18 W=Wp L=200.0n
MM4 Vout Vin VDD VDD P_18 W=Wp L=200.0n
MM3 Vout Vin VDD VDD P_18 W=Wp L=200.0n
MM2 net13 Vin GND GND N_18 W=5.4u L=200.0n
MM1 net17 Vin net13 GND N_18 W=5.4u L=200.0n
MM0 Vout Vin net17 GND N_18 W=5.4u L=200.0n
.ENDS

