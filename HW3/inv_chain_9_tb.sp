
.protect

.lib 'cic018.l' TT

.unprotect
.include 'inv_chain_9.sp'

.temp 25

.option post acout=0 runlvl=6 captab

*************** circuit description ***************
X1 vdd vss vin vout node1 node2 node3 node4 node5 node6 node7 node8 inv_chain_9

VDD vdd gnd 1.8
VSS vss gnd 0

VIN vin gnd PULSE 0 1.8 1n 0.1n 0.1n 9.9n '20n'

*************** simulation setting ***************
.op
.tran 0.1ns '50n'
.measure tran power AVG power from=1ns to=50ns
.measure tran pdf_vout Trig V(vin) val=0.9 rise=2 Targ V(vout) val=0.9 fall=2
.measure tran pdr_vout Trig V(vin) val=0.9 fall=2 Targ V(vout) val=0.9 rise=2
.end