v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -180 190 -160 {
lab=OUT}
N 150 -210 150 -130 {
lab=IN}
N 190 -130 200 -130 {
lab=GND}
N 200 -130 200 -100 {
lab=GND}
N 190 -100 200 -100 {
lab=GND}
N 190 -210 200 -210 {
lab=VDD}
N 200 -240 200 -210 {
lab=VDD}
N 190 -240 200 -240 {
lab=VDD}
N 190 -170 240 -170 {
lab=OUT}
N 110 -170 150 -170 {
lab=IN}
N 190 -270 190 -240 {
lab=VDD}
N 190 -100 190 -70 {
lab=GND}
C {symbols/nfet_03v3.sym} 170 -130 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 170 -210 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 190 -70 0 0 {name=p2 lab=GND}
C {devices/iopin.sym} 190 -270 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 240 -170 0 0 {name=p3 lab=OUT
}
C {devices/iopin.sym} 110 -170 2 0 {name=p4 lab=IN}
