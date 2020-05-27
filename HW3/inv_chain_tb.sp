
.protect

.lib 'cic018.l' TT

.unprotect
.include 'inv_chain.sp'

.temp 25

.option post acout=0 runlvl=6 captab

*************** circuit description ***************
X1 node1 node2 node3 node4 node5 node6 vdd vss vin vout inv_chain

VDD vdd gnd 1.8
VSS vss gnd 0

VIN vin gnd PULSE 0 1.8 1n 0.1n 0.1n 9.9n '20n'

*************** simulation setting ***************
.op
.tran 0.1ns '50n'
.measure tran power AVG power from=1ns to=50ns
.measure tran pdf_vout Trig V(vin) val=0.9 rise=2 Targ V(vout) val=0.9 fall=2
.measure tran pdr_vout Trig V(vin) val=0.9 fall=2 Targ V(vout) val=0.9 rise=2
.measure tran pdf_node1 Trig V(vin) val=0.9 rise=2 Targ V(node1) val=0.9 fall=2
.measure tran pdr_node1 Trig V(vin) val=0.9 fall=2 Targ V(node1) val=0.9 rise=2
.measure tran pdf_node2 Trig V(vin) val=0.9 fall=2 Targ V(node2) val=0.9 fall=2
.measure tran pdr_node2 Trig V(vin) val=0.9 rise=2 Targ V(node2) val=0.9 rise=2
.measure tran pdf_node3 Trig V(vin) val=0.9 rise=2 Targ V(node3) val=0.9 fall=2
.measure tran pdr_node3 Trig V(vin) val=0.9 fall=2 Targ V(node3) val=0.9 rise=2
.measure tran pdf_node4 Trig V(vin) val=0.9 fall=2 Targ V(node4) val=0.9 fall=2
.measure tran pdr_node4 Trig V(vin) val=0.9 rise=2 Targ V(node4) val=0.9 rise=2
.measure tran pdf_node5 Trig V(vin) val=0.9 rise=2 Targ V(node5) val=0.9 fall=2
.measure tran pdr_node5 Trig V(vin) val=0.9 fall=2 Targ V(node5) val=0.9 rise=2
.measure tran pdf_node6 Trig V(vin) val=0.9 fall=2 Targ V(node6) val=0.9 fall=2
.measure tran pdr_node6 Trig V(vin) val=0.9 rise=2 Targ V(node6) val=0.9 rise=2
.end



