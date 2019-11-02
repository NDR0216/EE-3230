
.protect

.lib 'cic018.l' TT

.unprotect
.include 'NAND3withC.sp'

.temp 25

.option post acout=0 runlvl=6

*************** circuit description ***************
X1 A B C vss vdd out NAND3 Wp = 2.22u

vdd vdd gnd 1.8
vss vss gnd 0
V1 C 0 PULSE 0 1.8 9900p 100p 100p 9900p 20n
V2 B 0 1.8
V3 A 0 1.8

*************** simulation setting ***************
.op
.tran 0.01n 50n
.measure tran cont_f Trig V(C) val=0.9 rise=2 Targ V(out) val=0.9 fall=2
.measure tran cont_r Trig V(C) val=0.9 fall=2 Targ V(out) val=0.9 rise=2

.alter
.lib "cic018.l"FF
.temp -40

.alter
.lib "cic018.l"SS
.temp 125

.alter
.lib "cic018.l"SF
.temp 25

.alter
.lib "cic018.l"FS
.temp 25

.end
