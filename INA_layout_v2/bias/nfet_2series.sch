v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -360 -310 -360 -290 {
lab=D}
N -360 -260 -330 -260 {
lab=B}
N -360 -230 -360 -210 {
lab=#net1}
N -430 -260 -400 -260 {
lab=G}
N -360 -180 -330 -180 {
lab=B}
N -360 -150 -360 -130 {
lab=S}
N -430 -180 -400 -180 {
lab=G}
C {devices/lab_wire.sym} -350 -260 0 1 {name=p6 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} -360 -130 2 1 {name=p7 sig_type=std_logic lab=S}
C {devices/lab_wire.sym} -360 -310 0 0 {name=p8 sig_type=std_logic lab=D}
C {devices/iopin.sym} -510 -300 0 1 {name=p29 lab=S}
C {devices/iopin.sym} -510 -270 0 1 {name=p14 lab=B}
C {devices/iopin.sym} -510 -240 0 1 {name=p15 lab=G}
C {devices/iopin.sym} -510 -210 0 1 {name=p16 lab=D}
C {devices/lab_wire.sym} -420 -260 0 1 {name=p1 sig_type=std_logic lab=G}
C {devices/lab_wire.sym} -350 -180 0 1 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} -420 -180 0 1 {name=p3 sig_type=std_logic lab=G}
C {sky130_fd_pr/nfet_01v8.sym} -380 -260 0 0 {name=M1
L=1
W=1
body=GND
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
C {sky130_fd_pr/nfet_01v8.sym} -380 -180 0 0 {name=M2
L=1
W=1
body=GND
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
