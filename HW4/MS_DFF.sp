************************************************************************
* auCdl Netlist:
* 
* Library Name:  HW4
* Top Cell Name: MS_DFF
* View Name:     schematic
* Netlisted on:  Dec 19 18:49:44 2019
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
* Library Name: HW4
* Cell Name:    MS_DFF
* View Name:    schematic
************************************************************************

.SUBCKT MS_DFF CK CKB CKin D Q VDD VSS
*.PININFO CK:B CKB:B CKin:B D:B Q:B VDD:B VSS:B
MM27 Q net0206 VDD VDD P_18 W=1.5u L=180.00n m=19
MM25 net0206 net0210 VDD VDD P_18 W=10.7u L=180.00n
MM20 net14 CKB net2 VDD P_18 W=1.5u L=180.00n
MM23 net0210 net61 VDD VDD P_18 W=4.01u L=180.00n
MM16 net61 net14 VDD VDD P_18 W=1.5u L=180.00n
MM14 net13 CK net14 VDD P_18 W=1.5u L=180.00n
MM15 net13 net61 VDD VDD P_18 W=1.5u L=180.00n
MM12 net21 CKB net0178 VDD P_18 W=1.5u L=180.00n
MM8 net2 net0178 VDD VDD P_18 W=1.5u L=180.00n
MM7 net81 D VDD VDD P_18 W=1.5u L=180.00n
MM4 CK CKB VDD VDD P_18 W=1.5u L=180.00n
MM3 net0178 CK net81 VDD P_18 W=1.5u L=180.00n
MM10 net21 net2 VDD VDD P_18 W=1.5u L=180.00n
MM1 CKB CKin VDD VDD P_18 W=1.5u L=180.00n
MM26 Q net0206 VSS VSS N_18 W=500.0n L=180.00n m=19
MM22 net0210 net61 VSS VSS N_18 W=1.34u L=180.00n
MM21 net14 CK net2 VSS N_18 W=500.0n L=180.00n
MM18 net13 net61 VSS VSS N_18 W=500.0n L=180.00n
MM19 net61 net14 VSS VSS N_18 W=500.0n L=180.00n
MM24 net0206 net0210 VSS VSS N_18 W=3.57u L=180.00n
MM17 net13 CKB net14 VSS N_18 W=500.0n L=180.00n
MM13 net21 CK net0178 VSS N_18 W=500.0n L=180.00n
MM11 net21 net2 VSS VSS N_18 W=500.0n L=180.00n
MM9 net2 net0178 VSS VSS N_18 W=500.0n L=180.00n
MM6 net81 D VSS VSS N_18 W=500.0n L=180.00n
MM5 CK CKB VSS VSS N_18 W=500.0n L=180.00n
MM2 net0178 CKB net81 VSS N_18 W=500.0n L=180.00n
MM0 CKB CKin VSS VSS N_18 W=500.0n L=180.00n
.ENDS

