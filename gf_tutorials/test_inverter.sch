v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -310 510 -240 {
lab=out}
N 470 -340 470 -210 {
lab=in}
N 510 -280 630 -280 {
lab=out}
N 370 -280 470 -280 {
lab=in}
N 510 -180 510 -150 {
lab=#net1}
N 510 -430 590 -430 {
lab=#net2}
N 510 -430 510 -370 {
lab=#net2}
N 280 -280 370 -280 {
lab=in}
N 600 -300 600 -280 {
lab=out}
N 370 -290 370 -280 {
lab=in}
N 510 -210 550 -210 {
lab=GND}
N 550 -210 550 -90 {
lab=GND}
N 510 -90 550 -90 {
lab=GND}
N 510 -340 640 -340 {
lab=#net3}
N 640 -430 640 -340 {
lab=#net3}
N 640 -430 670 -430 {
lab=#net3}
C {symbols/nfet_03v3.sym} 490 -210 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 490 -340 0 0 {name=M2
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
C {devices/vsource.sym} 280 -250 0 0 {name=Vin value="pulse(0 3.3 50p 20p 20p 100p 300p)"}
C {devices/vsource.sym} 590 -400 0 0 {name=VDD value=3.3}
C {devices/vsource.sym} 510 -120 0 0 {name=VS value=0}
C {devices/capa.sym} 630 -250 0 0 {name=C1
m=1
value=1a
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 510 -90 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 280 -220 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 590 -370 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 630 -220 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 600 -300 0 0 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 370 -290 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/title.sym} 80 -30 0 0 {name=l5 author="Gabriel Maranhão"}
C {devices/code_shown.sym} 0 -470 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 0 -370 0 0 {name=NGSPICE only_toplevel=true
value="
.save all
.tran 1p 500p
"}
C {devices/vsource.sym} 670 -400 0 0 {name=VDD1 value=3.3}
C {devices/gnd.sym} 670 -370 0 0 {name=l6 lab=GND}
