
.protect

*.lib 'cic018.l' TT
*.lib 'cic018.l' FF
*.lib 'cic018.l' SS
*.lib 'cic018.l' SF
.lib 'cic018.l' FS

.unprotect
.include 'inv.sp'

.temp 25
*.temp -40
*.temp 125

.option post acout=0 runlvl=6

*************** circuit description ***************
X1 vdd vss in out inv

vdd vdd gnd 1.8
vss vss gnd 0

*Vin in gnd 0.9
Vin in gnd PULSE 0 1.8 10n 1n 1n '10n-2n' '20n' 

*************** simulation setting ***************
.op

.tran 0.1ns '500n'
*.dc vin 0 1.8 0.05



.end

