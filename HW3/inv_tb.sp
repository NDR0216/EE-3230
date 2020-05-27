
.protect

.lib 'cic018.l' TT

.unprotect
.include 'inv.sp'

.temp 25

.option post acout=0 runlvl=6 captab

*************** circuit description ***************
X1 vss vdd vin vout inv

VDD vdd gnd 1.8
VSS vss gnd 0

VIN vin gnd PULSE 0 1.8 1n 0.1n 0.1n 9.9n '20n'

*************** simulation setting ***************
.op
.end


