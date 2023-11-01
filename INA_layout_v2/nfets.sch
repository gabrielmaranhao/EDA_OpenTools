v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -60 -100 -30 {
lab=VD1}
N 70 -60 70 -30 {
lab=VD2}
N -100 0 70 0 {
lab=VB}
N -170 0 -140 0 {
lab=VG1}
N 110 0 140 0 {
lab=VG2}
N -170 110 -150 110 {
lab=VB}
N -150 110 -150 140 {
lab=VB}
N -170 140 -150 140 {
lab=VB}
N -210 140 -170 140 {
lab=VB}
N -210 110 -210 140 {
lab=VB}
N -210 80 -210 110 {
lab=VB}
N -210 80 -170 80 {
lab=VB}
N -100 30 -100 60 {
lab=VS1}
N 70 30 70 60 {
lab=VS2}
C {sky130_fd_pr/nfet_01v8.sym} -120 0 0 0 {name=M1
L=1
W=1
nf=1
mult=7
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 0 0 1 {name=M2
L=1
W=1
nf=1
mult=7
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -190 110 0 0 {name=M3
L=1
W=1
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -100 60 1 0 {name=p1 lab=VS1}
C {devices/iopin.sym} 70 60 1 0 {name=p2 lab=VS2}
C {devices/iopin.sym} -20 0 1 0 {name=p3 lab=VB}
C {devices/iopin.sym} -170 0 2 0 {name=p4 lab=VG1}
C {devices/iopin.sym} 140 0 0 0 {name=p5 lab=VG2}
C {devices/iopin.sym} -100 -60 3 0 {name=p6 lab=VD1}
C {devices/iopin.sym} 70 -60 3 0 {name=p7 lab=VD2}
C {devices/lab_wire.sym} -210 80 0 0 {name=p8 sig_type=std_logic lab=VB}
