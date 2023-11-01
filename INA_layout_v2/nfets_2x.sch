v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -190 -50 -160 {
lab=VD1}
N 50 -190 50 -160 {
lab=VD2}
N -180 -70 -150 -70 {
lab=VG1}
N 150 -70 180 -70 {
lab=VG2}
N -180 60 -160 60 {
lab=VB}
N -160 60 -160 90 {
lab=VB}
N -180 90 -160 90 {
lab=VB}
N -220 90 -180 90 {
lab=VB}
N -220 60 -220 90 {
lab=VB}
N -220 30 -220 60 {
lab=VB}
N -220 30 -180 30 {
lab=VB}
N -50 20 -50 50 {
lab=VS1}
N 50 20 50 50 {
lab=VS2}
N 0 20 0 50 {
lab=VB}
C {sky130_fd_pr/nfet_01v8.sym} -200 60 0 0 {name=M3[1:0]
L=1
W=1
nf=1
mult=9
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -50 50 1 0 {name=p1 lab=VS1}
C {devices/iopin.sym} 50 50 1 0 {name=p2 lab=VS2}
C {devices/iopin.sym} 0 50 1 0 {name=p3 lab=VB}
C {devices/iopin.sym} -180 -70 2 0 {name=p4 lab=VG1}
C {devices/iopin.sym} 180 -70 0 0 {name=p5 lab=VG2}
C {devices/iopin.sym} -50 -190 3 0 {name=p6 lab=VD1}
C {devices/iopin.sym} 50 -190 3 0 {name=p7 lab=VD2}
C {devices/lab_wire.sym} -220 30 0 0 {name=p8 sig_type=std_logic lab=VB}
C {INA_layout_v2/nfets.sym} 0 -70 0 0 {name=x1[2:1]}
