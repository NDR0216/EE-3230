* -------------------------------------------------------------------
*|                     Do Not Revise This Document                  |
* -------------------------------------------------------------------


**********************************************************************
**                          Simulation Setup                        **
**********************************************************************

.prot                                                 
.lib 'cic018.l' tt                            
.unprot                                               
.option post = 1                                        
.option accurate=1                                       
.option runlvl=5  
.option captab
.option measform=3
.option numdgt=5 measdgt=5
.temp 25                    
.ic v(Q)=vdd
.include "MS_DFF.pex.netlist" $include Master Slave DFF circuit
                
****************************End of Segment****************************



**********************************************************************
**                        Parameter Definition                      **
**********************************************************************

.param VDD = 1.8
.param VSS = 0
.param Cload = 200f
.param freq_in = 50x
.param clk_prd  = '(1/freq_in)'
.param clk_trf  = 0.1n
.param tdelay = 100p

****************************End of Segment****************************



****************************Master Slave DFF****************************
X1 VDD VSS CK CKB CKin D Q / MS_DFF $�̶��ǱƦC
CL Q gnd Cload


**********************************************************************
**                          External Source                         **
**********************************************************************

VDD VDD gnd VDD
VSS VSS gnd VSS
v_clk CKin gnd pulse(0 VDD 0 clk_trf clk_trf 'clk_prd/2-clk_trf' clk_prd)
Vin_D D gnd pwl(0 vdd '3*clk_prd-tdelay' vdd '3*clk_prd+clk_trf-tdelay' 0)
.tran 0.1p 'clk_prd*10' sweep tdelay -150p 150p 1p  $sweep the delay time between D and CKin on your own
***************************************End of Segment**********************************************



**********************************************************************
**                     Simulation & Measurement                     **
**********************************************************************

***************************transitions********************************
******falling setup time, falling tD2Q, and falling TCK2Q testing*****
.MEAS tran t_SUf TRIG v(D) VAL = 'VDD / 2' FALL=1
 + TARG v(CKin) VAL = 'VDD / 2' RISE=4
 
.MEAS tran TD2Qf TRIG v(D) VAL = 'VDD / 2' FALL=1
 + TARG v(Q) VAL = 'VDD / 2' FALL=1
 
.MEAS tran tCK2Qf TRIG v(CKin) VAL = 'VDD / 2' RISE=4
 + TARG v(Q) VAL = 'VDD / 2' FALL=1



****************************End of Segment****************************

.end