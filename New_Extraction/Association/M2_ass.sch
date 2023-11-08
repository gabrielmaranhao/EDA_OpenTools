v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -180 200 -160 {
lab=#net1}
N 200 -210 210 -210 {
lab=B}
N 210 -170 330 -170 {
lab=B}
N 200 -320 200 -240 {
lab=D}
N 150 -210 160 -210 {
lab=G}
N 200 580 200 630 {
lab=S}
N 90 -170 150 -170 {
lab=G}
N 150 -130 160 -130 {
lab=G}
N 210 -210 210 -130 {
lab=B}
N 200 -130 210 -130 {
lab=B}
N 200 240 200 270 {}
N 200 330 200 350 {}
N 200 410 200 440 {}
N 200 500 200 520 {}
N 200 550 210 550 {}
N 210 -130 210 550 {}
N 200 -40 210 -40 {}
N 200 -100 200 -70 {}
N 200 -10 200 10 {}
N 200 40 210 40 {}
N 200 70 200 100 {}
N 200 130 210 130 {}
N 200 160 200 180 {}
N 200 210 210 210 {}
N 200 300 210 300 {}
N 200 380 210 380 {}
N 200 470 210 470 {}
N 150 550 160 550 {}
N 150 -140 150 550 {}
N 150 -210 150 -140 {}
N 150 -40 160 -40 {}
N 150 40 160 40 {}
N 150 130 160 130 {}
N 150 210 160 210 {}
N 150 300 160 300 {}
N 150 380 160 380 {}
N 150 470 160 470 {}
C {symbols/nfet_03v3.sym} 180 -210 0 0 {name=M1
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 30 -180 0 1 {name=p1 lab=D}
C {devices/iopin.sym} 30 -160 0 1 {name=p2 lab=G}
C {devices/iopin.sym} 30 -140 0 1 {name=p3 lab=S}
C {devices/iopin.sym} 30 -120 0 1 {name=p4 lab=B}
C {devices/lab_pin.sym} 90 -170 0 0 {name=p5 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 330 -170 0 1 {name=p6 sig_type=std_logic lab=B
L=LENGHT
W=WIDTH}
C {devices/lab_pin.sym} 200 -320 0 1 {name=p7 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 200 630 0 1 {name=p8 sig_type=std_logic lab=S}
C {symbols/nfet_03v3.sym} 180 -130 0 0 {name=M2
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 -40 0 0 {name=M3
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 40 0 0 {name=M4
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 130 0 0 {name=M5
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 210 0 0 {name=M6
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 300 0 0 {name=M7
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 380 0 0 {name=M8
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 470 0 0 {name=M9
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 550 0 0 {name=M10
L=LENGHT
W=WIDTH
nf=1
m=739
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
