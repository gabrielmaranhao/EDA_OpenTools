v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 -310 350 -290 {
lab=#net1}
N 350 -340 370 -340 {
lab=AVSS}
N 370 -340 370 -260 {
lab=AVSS}
N 350 -260 370 -260 {
lab=AVSS}
N 310 -400 310 -260 {
lab=VB3}
N 310 -400 350 -400 {
lab=VB3}
N 350 -400 350 -370 {
lab=VB3}
N 350 -230 350 -200 {
lab=AVSS}
N 350 -200 370 -200 {
lab=AVSS}
N 370 -250 370 -200 {
lab=AVSS}
N 420 -310 460 -310 {}
N 420 -310 420 -250 {}
N 420 -250 460 -250 {}
N 460 -310 460 -250 {}
N 370 -250 420 -250 {}
N 370 -260 370 -250 {
lab=AVSS}
C {devices/iopin.sym} 370 -200 0 0 {name=p1 lab=AVSS}
C {devices/iopin.sym} 350 -400 0 0 {name=p2 lab=VB3}
C {INA_layout_v2/bias/nfet_2series.sym} 350 -260 0 0 {name=x1}
C {INA_layout_v2/bias/nfet_2series.sym} 350 -340 0 0 {name=x2}
C {sky130_fd_pr/nfet_01v8.sym} 440 -280 0 0 {name=M1[14:1]
L=1
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
