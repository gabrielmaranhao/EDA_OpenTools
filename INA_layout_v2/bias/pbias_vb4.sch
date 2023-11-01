v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -250 260 -200 {
lab=VB4}
N 260 -430 260 -400 {
lab=#net1}
N 260 -340 260 -310 {
lab=#net2}
N 220 -460 220 -200 {
lab=VB4}
N 260 -370 270 -370 {
lab=AVDD}
N 270 -460 270 -370 {
lab=AVDD}
N 260 -460 270 -460 {
lab=AVDD}
N 270 -370 270 -280 {
lab=AVDD}
N 260 -280 270 -280 {
lab=AVDD}
N 260 -540 260 -490 {
lab=AVDD}
N 420 -250 420 -200 {
lab=VB4}
N 420 -430 420 -400 {
lab=#net3}
N 420 -340 420 -310 {
lab=#net4}
N 380 -460 380 -200 {
lab=VB4}
N 420 -370 430 -370 {
lab=AVDD}
N 430 -460 430 -370 {
lab=AVDD}
N 420 -460 430 -460 {
lab=AVDD}
N 430 -370 430 -280 {
lab=AVDD}
N 420 -280 430 -280 {
lab=AVDD}
N 420 -540 420 -490 {
lab=AVDD}
N 560 -250 560 -200 {
lab=VB4}
N 560 -430 560 -400 {
lab=#net5}
N 560 -340 560 -310 {
lab=#net6}
N 520 -460 520 -200 {
lab=VB4}
N 560 -370 570 -370 {
lab=AVDD}
N 570 -460 570 -370 {
lab=AVDD}
N 560 -460 570 -460 {
lab=AVDD}
N 570 -370 570 -280 {
lab=AVDD}
N 560 -280 570 -280 {
lab=AVDD}
N 560 -540 560 -490 {
lab=AVDD}
N 700 -250 700 -200 {
lab=VB4}
N 700 -430 700 -400 {
lab=#net7}
N 700 -340 700 -310 {
lab=#net8}
N 660 -460 660 -200 {
lab=VB4}
N 700 -370 710 -370 {
lab=AVDD}
N 710 -460 710 -370 {
lab=AVDD}
N 700 -460 710 -460 {
lab=AVDD}
N 710 -370 710 -280 {
lab=AVDD}
N 700 -280 710 -280 {
lab=AVDD}
N 700 -540 700 -490 {
lab=AVDD}
N 840 -250 840 -200 {
lab=VB4}
N 840 -430 840 -400 {
lab=#net9}
N 840 -340 840 -310 {
lab=#net10}
N 800 -460 800 -200 {
lab=VB4}
N 840 -370 850 -370 {
lab=AVDD}
N 850 -460 850 -370 {
lab=AVDD}
N 840 -460 850 -460 {
lab=AVDD}
N 850 -370 850 -280 {
lab=AVDD}
N 840 -280 850 -280 {
lab=AVDD}
N 840 -540 840 -490 {
lab=AVDD}
N 800 -200 840 -200 {
lab=VB4}
N 220 -200 260 -200 {
lab=VB4}
N 710 -540 840 -540 {
lab=AVDD}
N 270 -540 270 -460 {
lab=AVDD}
N 430 -540 430 -460 {
lab=AVDD}
N 570 -540 570 -460 {
lab=AVDD}
N 710 -540 710 -460 {
lab=AVDD}
N 850 -540 850 -460 {
lab=AVDD}
N 840 -540 850 -540 {
lab=AVDD}
N 380 -200 420 -200 {
lab=VB4}
N 270 -540 420 -540 {
lab=AVDD}
N 520 -200 560 -200 {
lab=VB4}
N 480 -540 560 -540 {
lab=AVDD}
N 660 -200 700 -200 {
lab=VB4}
N 570 -540 700 -540 {
lab=AVDD}
N 260 -200 380 -200 {
lab=VB4}
N 420 -200 520 -200 {
lab=VB4}
N 560 -200 660 -200 {
lab=VB4}
N 700 -200 800 -200 {
lab=VB4}
N 260 -540 270 -540 {
lab=AVDD}
N 420 -540 430 -540 {
lab=AVDD}
N 560 -540 570 -540 {
lab=AVDD}
N 700 -540 710 -540 {
lab=AVDD}
N 440 -590 480 -590 {}
N 480 -650 480 -590 {}
N 440 -650 480 -650 {}
N 440 -650 440 -590 {}
N 480 -590 480 -540 {}
N 430 -540 480 -540 {
lab=AVDD}
C {devices/iopin.sym} 840 -200 0 0 {name=p20 lab=VB4}
C {devices/iopin.sym} 260 -540 0 1 {name=p29 lab=AVDD}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 240 -460 0 0 {name=M1
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 240 -370 0 0 {name=M2
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 240 -280 0 0 {name=M3
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 400 -460 0 0 {name=M4
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 400 -370 0 0 {name=M5
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 400 -280 0 0 {name=M6
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 540 -460 0 0 {name=M7
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 540 -370 0 0 {name=M8
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 540 -280 0 0 {name=M9
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 680 -460 0 0 {name=M10
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 680 -370 0 0 {name=M11
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 680 -280 0 0 {name=M12
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 820 -460 0 0 {name=M13
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 820 -370 0 0 {name=M14
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 820 -280 0 0 {name=M15
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 460 -620 0 0 {name=M16[20:1]
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
model=pfet_01v8_hvt
spiceprefix=X
}
