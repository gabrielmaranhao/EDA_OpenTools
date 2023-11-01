v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -120 280 -120 {
lab=VB}
N 280 -90 280 -60 {
lab=VD2}
N 130 -90 130 -60 {
lab=VD1}
N 320 -120 350 -120 {
lab=VG2}
N 60 -120 90 -120 {
lab=VG1}
N 60 -240 100 -240 {
lab=VB}
N 20 -290 20 -240 {
lab=VB}
N 20 -290 100 -290 {
lab=VB}
N 100 -290 100 -210 {
lab=VB}
N 60 -210 100 -210 {
lab=VB}
N 60 -290 60 -270 {
lab=VB}
N 280 -180 280 -150 {
lab=VS2}
N 130 -180 130 -150 {
lab=VS1}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 110 -120 0 0 {name=M1
L=1
W=1
nf=1
mult=22
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 300 -120 0 1 {name=M2
L=1
W=1
nf=1
mult=22
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 40 -240 0 0 {name=M3
L=1
W=1
nf=1
mult=34
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/iopin.sym} 130 -180 3 0 {name=p1 lab=VS1}
C {devices/iopin.sym} 280 -180 3 0 {name=p2 lab=VS2}
C {devices/iopin.sym} 210 -120 3 0 {name=p3 lab=VB}
C {devices/iopin.sym} 60 -120 2 0 {name=p4 lab=VG1}
C {devices/iopin.sym} 350 -120 2 1 {name=p5 lab=VG2}
C {devices/iopin.sym} 130 -60 3 1 {name=p6 lab=VD1}
C {devices/iopin.sym} 280 -60 3 1 {name=p7 lab=VD2}
C {devices/lab_wire.sym} 20 -290 0 0 {name=p8 sig_type=std_logic lab=VB}
