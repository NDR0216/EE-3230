************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW2
* Top Cell Name: NAND3
* View Name:     schematic
* Netlisted on:  Oct 30 08:47:01 2019
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

.SUBCKT NAND3 A B C GND VDD Vout
*.PININFO A:B B:B C:B GND:B VDD:B Vout:B
CC0 Vout GND 1p $[CP]
MM5 Vout C VDD VDD P_18 W=Wp L=200.0n
MM4 Vout B VDD VDD P_18 W=Wp L=200.0n
MM3 Vout A VDD VDD P_18 W=Wp L=200.0n
MM2 net13 C GND GND N_18 W=5.4u L=200.0n
MM1 net17 B net13 GND N_18 W=5.4u L=200.0n
MM0 Vout A net17 GND N_18 W=5.4u L=200.0n
.ENDS

