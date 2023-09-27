v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -50 590 -50 {
lab=#net1}
N 510 -110 510 -80 {
lab=vd}
N 510 -110 680 -110 {
lab=vd}
N 680 -110 680 -100 {
lab=vd}
N 450 -50 470 -50 {
lab=vg}
N 430 -50 450 -50 {
lab=vg}
N 510 -20 510 20 {
lab=GND}
N 510 20 590 20 {
lab=GND}
N 590 20 590 70 {
lab=GND}
N 590 20 620 20 {
lab=GND}
N 590 -50 620 -50 {
lab=#net1}
N 620 -50 620 -40 {
lab=#net1}
N 610 -130 610 -110 {
lab=vd}
N 450 -70 450 -50 {
lab=vg}
C {symbols/nfet_03v3.sym} 490 -50 0 0 {name=M1
L=20u
W=1u
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
C {devices/vsource.sym} 680 -70 0 0 {name=VD value=0}
C {devices/vsource.sym} 620 -10 0 0 {name=VB value=0}
C {devices/vsource.sym} 430 -20 0 0 {name=VG value=400m}
C {devices/gnd.sym} 430 10 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 590 70 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 680 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -10 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
*.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064_edited.ngspice typical
"}
C {devices/code_shown.sym} -10 -90 0 0 {name=NGSPICE only_toplevel=true
value="
.option gmin=1e-24
.save all
.dc VD 0.0001 3.3 1m
"}
C {devices/lab_pin.sym} 610 -130 0 0 {name=p1 sig_type=std_logic lab=vd
}
C {devices/lab_pin.sym} 450 -70 0 0 {name=p2 sig_type=std_logic lab=vg
}
