
.protect

.lib 'cic018.l' TT

.unprotect
.include 'NAND3.sp'

.temp 25

.option post acout=0 runlvl=6

*************** circuit description ***************
X1 vss vdd in out NAND3

vdd vdd gnd 1.8
vss vss gnd 0
Vin in 0 1.8

*************** simulation setting ***************
.op
.dc Vin 0 1.8 0.01 sweep Wp 1.2u 5.4u 0.01u
* .dc Vin 0 1.8 0.01
.meas dc VIL find V(in) when deriv('V(out)')=-1 cross=1
.meas dc VIH find V(in) when deriv('V(out)')=-1 cross=2
.meas dc VOH find V(out) when deriv('V(out)')=-1 cross=1
.meas dc VOL find V(out) when deriv('V(out)')=-1 cross=2
.end


