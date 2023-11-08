v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -60 240 -40 {
lab=#net1}
N 240 20 240 40 {
lab=#net2}
N 240 100 240 120 {
lab=#net3}
N 240 180 240 200 {
lab=#net4}
N 240 260 240 280 {
lab=#net5}
N 240 340 240 360 {
lab=#net6}
N 240 -90 250 -90 {
lab=B}
N 250 -90 250 390 {
lab=B}
N 240 390 250 390 {
lab=B}
N 240 150 250 150 {
lab=B}
N 250 150 370 150 {
lab=B}
N 240 -200 240 -120 {
lab=D}
N 190 -90 200 -90 {
lab=G}
N 190 -90 190 390 {
lab=G}
N 190 390 200 390 {
lab=G}
N 190 310 200 310 {
lab=G}
N 190 230 200 230 {
lab=G}
N 190 150 200 150 {
lab=G}
N 190 70 200 70 {
lab=G}
N 190 -10 200 -10 {
lab=G}
N 240 -10 250 -10 {
lab=B}
N 240 70 250 70 {
lab=B}
N 240 230 250 230 {
lab=B}
N 240 310 250 310 {
lab=B}
N 240 660 240 710 {
lab=S}
N 130 150 190 150 {
lab=G}
N 240 420 240 440 {}
N 240 500 240 520 {}
N 240 580 240 600 {}
N 250 390 250 630 {}
N 240 630 250 630 {}
N 190 390 190 630 {}
N 190 630 200 630 {}
N 190 550 200 550 {}
N 190 470 200 470 {}
N 240 470 250 470 {}
N 240 550 250 550 {}
C {symbols/nfet_03v3.sym} 220 -90 0 0 {name=M1
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 220 -10 0 0 {name=M2
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 220 70 0 0 {name=M3
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 220 150 0 0 {name=M4
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 220 230 0 0 {name=M5
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 220 310 0 0 {name=M6
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 220 390 0 0 {name=M7
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 70 -60 0 1 {name=p1 lab=D}
C {devices/iopin.sym} 70 -40 0 1 {name=p2 lab=G}
C {devices/iopin.sym} 70 -20 0 1 {name=p3 lab=S}
C {devices/iopin.sym} 70 0 0 1 {name=p4 lab=B}
C {devices/lab_pin.sym} 130 150 0 0 {name=p5 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 370 150 0 1 {name=p6 sig_type=std_logic lab=B
L=LENGHT
W=WIDTH
m=41}
C {devices/lab_pin.sym} 240 -200 0 1 {name=p7 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 240 710 0 1 {name=p8 sig_type=std_logic lab=S}
C {symbols/nfet_03v3.sym} 220 470 0 0 {name=M8
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 220 550 0 0 {name=M9
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 220 630 0 0 {name=M10
L=LENGHT
W=WIDTH
nf=1
m=41
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
