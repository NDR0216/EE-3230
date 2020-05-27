************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW3
* Top Cell Name: inv_chain
* View Name:     schematic
* Netlisted on:  Nov 28 05:30:45 2019
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
* Cell Name:    inv_chain
* View Name:    schematic
************************************************************************

.SUBCKT inv_chain Node1 Node2 Node3 Node4 Node5 Node6 VDD VSS Vin Vout
*.PININFO Node1:B Node2:B Node3:B Node4:B Node5:B Node6:B VDD:B VSS:B Vin:B 
*.PININFO Vout:B
MM11 Node5 Node4 VDD VDD P_18 W=1.5u L=180.00n m=88
MM12 Node6 Node5 VDD VDD P_18 W=1.5u L=180.00n m=270
MM10 Node4 Node3 VDD VDD P_18 W=42.94u L=180.00n
MM13 Vout Node6 VDD VDD P_18 W=1.5u L=180.00n m=830
MM8 Node2 Node1 VDD VDD P_18 W=4.56u L=180.00n
MM7 Node1 Vin VDD VDD P_18 W=1.5u L=180.00n
MM9 Node3 Node2 VDD VDD P_18 W=13.99u L=180.00n
MM1 Node2 Node1 VSS VSS N_18 W=1.52u L=180.00n
MM6 Vout Node6 VSS VSS N_18 W=500.0n L=180.00n m=830
MM5 Node6 Node5 VSS VSS N_18 W=500.0n L=180.00n m=270
MM4 Node5 Node4 VSS VSS N_18 W=43.95u L=180.00n
MM3 Node4 Node3 VSS VSS N_18 W=14.31u L=180.00n
MM2 Node3 Node2 VSS VSS N_18 W=4.66u L=180.00n
MM0 Node1 Vin VSS VSS N_18 W=500.0n L=180.00n
CC0 Vout VSS 10p $[CP]
.ENDS

