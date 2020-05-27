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
.option measform=2 
.option captab
.option measform=3
.option numdgt=5 measdgt=5
.temp 25                    
.ic v(Q)=0
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

****************************End of Segment****************************



****************************Master Slave DFF****************************
X1 VDD VSS CK CKB CKin D Q / MS_DFF $�̶��ǱƦC
CL Q gnd Cload


**********************************************************************
**                          External Source                         **
**********************************************************************

VDD VDD gnd VDD
VSS VSS gnd VSS
v_clk CKin gnd pulse(0 VDD '10n' clk_trf clk_trf 'clk_prd/2-clk_trf' clk_prd)
Vin_D D gnd pulse(0 VDD 0 clk_trf clk_trf 'clk_prd-clk_trf' '2*clk_prd')

.tran 0.1p 'clk_prd*55' 
******************************End of Segment**************************



**********************************************************************
**                     Simulation & Measurement                     **
**********************************************************************

**********************power consumption simulation********************
.MEAS tran total_avg_pwr_uW avg par('v(vdd)*-(i(vdd))*1e6') from='10n+30*clk_prd' to='10n+50*clk_prd' 




****************************End of Segment****************************

.end