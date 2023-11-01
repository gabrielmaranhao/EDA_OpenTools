v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -370 200 -340 {
lab=AVDD}
N 200 -370 490 -370 {
lab=AVDD}
N 490 -370 490 -340 {
lab=AVDD}
N 350 -370 350 -340 {
lab=AVDD}
N 240 -310 310 -310 {
lab=VB1}
N 400 -310 450 -310 {
lab=VB1}
N 180 -310 200 -310 {
lab=AVDD}
N 180 -370 180 -310 {
lab=AVDD}
N 180 -370 200 -370 {
lab=AVDD}
N 350 -310 370 -310 {
lab=AVDD}
N 370 -370 370 -310 {
lab=AVDD}
N 490 -310 510 -310 {
lab=AVDD}
N 510 -370 510 -310 {
lab=AVDD}
N 490 -370 510 -370 {
lab=AVDD}
N 200 -280 200 -230 {
lab=VB1}
N 200 -250 260 -250 {
lab=VB1}
N 260 -310 260 -250 {
lab=VB1}
N 350 -280 350 -230 {
lab=VB3}
N 490 -280 490 -230 {
lab=VB2}
N 210 -480 250 -480 {
lab=AVDD}
N 210 -420 250 -420 {
lab=AVDD}
N 210 -480 210 -420 {
lab=AVDD}
N 250 -480 250 -420 {
lab=AVDD}
N 210 -420 210 -370 {
lab=AVDD}
C {devices/iopin.sym} 200 -230 0 0 {name=p20 lab=VB1}
C {devices/iopin.sym} 490 -230 0 0 {name=p21 lab=VB2}
C {devices/iopin.sym} 350 -230 0 0 {name=p23 lab=VB3}
C {devices/iopin.sym} 180 -370 0 1 {name=p29 lab=AVDD}
C {devices/lab_wire.sym} 420 -310 0 0 {name=p1 sig_type=std_logic lab=VB1}
C {INA_layout_v2/bias/pfet_2series.sym} 200 -310 0 1 {name=x1[35:1]}
C {INA_layout_v2/bias/pfet_2series.sym} 350 -310 0 0 {name=x2[35:1]}
C {INA_layout_v2/bias/pfet_2series.sym} 490 -310 0 0 {name=x3[35:1]}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 230 -450 0 0 {name=M1
L=1
W=1
nf=1
mult=96
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
