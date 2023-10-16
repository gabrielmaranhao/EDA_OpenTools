v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 550 -230 790 -60 {}
L 4 550 110 790 -60 {}
L 4 550 -230 550 110 {}
L 4 40 -230 280 -60 {}
L 4 40 110 280 -60 {}
L 4 40 -230 40 110 {}
B 2 -630 250 230 640 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=3
xlabmag=1.5
ylabmag=1.5


dataset=-1
unitx=1
logx=0
logy=0















x1=0
color="4 6 5"
node="\\"Vin;vin\\"
\\"Vout_ACM;vout\\"
\\"Vout_BSIM;vout2\\""
linewidth_mult=3
y2=3.3
y1=0
x2=3.3
sweep=vin}
B 2 230 250 1090 640 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=3
xlabmag=1.5
ylabmag=1.5


dataset=-1
unitx=1
logx=0
logy=0















x1=0
color="6 5"
node="\\"Id_ACM;i(vs_i_acm)\\"
\\"Id_BSIM;i(vs_i_bsim)\\""
linewidth_mult=3
y2=0.0004
y1=4e-12
x2=3.3
sweep=vin}
T {Short-circuit current} 540 215 0 0 0.5 0.5 { layer=8}
N -90 0 -90 20 {
lab=GND}
N 130 -60 320 -60 {
lab=vout}
N 30 -60 90 -60 {
lab=vin}
N 640 40 640 70 {
lab=vss}
N 640 130 640 150 {
lab=GND}
N 640 -240 710 -240 {
lab=vdd}
N 640 -240 640 -170 {
lab=vdd}
N 640 -80 640 -50 {
lab=vout2}
N 600 -110 600 -20 {
lab=vin}
N 640 -20 650 -20 {
lab=vss}
N 640 -110 650 -110 {
lab=vdd}
N 650 -20 650 20 {
lab=vss}
N 640 20 650 20 {
lab=vss}
N 640 -170 640 -140 {
lab=vdd}
N 640 10 640 40 {
lab=vss}
N 650 -150 650 -110 {
lab=vdd}
N 640 -150 650 -150 {
lab=vdd}
N 640 -60 830 -60 {
lab=vout2}
N 540 -60 600 -60 {
lab=vin}
N 420 -60 540 -60 {
lab=vin}
N 130 -80 130 -50 {
lab=vout}
N 90 -110 90 -20 {
lab=vin}
N 130 -20 140 -20 {
lab=#net1}
N 130 -110 140 -110 {
lab=vdd}
N 140 -20 140 20 {
lab=#net1}
N 130 20 140 20 {
lab=#net1}
N 130 -170 130 -140 {
lab=vdd}
N 130 10 130 40 {
lab=#net1}
N 140 -150 140 -110 {
lab=vdd}
N 130 -150 140 -150 {
lab=vdd}
N 30 -60 90 -60 {
lab=vin}
N 130 40 130 90 {
lab=#net1}
N 130 -240 200 -240 {
lab=vdd}
N 130 -240 130 -170 {
lab=vdd}
N -90 -60 40 -60 {
lab=vin}
N 130 150 130 170 {
lab=GND}
C {devices/code_shown.sym} -630 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/launcher.sym} -575 225 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload DC Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code.sym} -640 -100 0 0 {name=NGSPICE only_toplevel=true

value="
*.option gmin=1e-18
.control
pre_osdi /home/lci-ufsc/Desktop/work_gf180/ACM/NMOS_ACM_2V0.osdi
pre_osdi /home/lci-ufsc/Desktop/work_gf180/ACM/PMOS_ACM_2V0.osdi
save all

op
remzerovec 
write TB_inv_acm_vt0.raw
set appendwrite

dc VIN 0 3.3 1m
remzerovec
write TB_inv_acm_vt0.raw
set appendwrite

.endc
"}
C {devices/vsource.sym} -90 -30 0 1 {name=VIN 
value=0
}
C {devices/vsource.sym} 200 -210 0 0 {name=VDD value=3.3
}
C {devices/gnd.sym} 200 -180 0 0 {name=l2 lab=GND
}
C {devices/gnd.sym} -90 20 0 0 {name=l3 lab=GND
}
C {devices/lab_wire.sym} 170 -240 0 0 {name=p3 sig_type=std_logic lab=vdd

}
C {devices/launcher.sym} -580 190 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 320 -60 0 0 {name=p2 sig_type=std_logic lab=vout
}
C {devices/lab_wire.sym} -50 -60 0 0 {name=p7 sig_type=std_logic lab=vin
}
C {devices/gnd.sym} 640 150 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 680 -240 0 0 {name=p1 sig_type=std_logic lab=vdd

}
C {devices/lab_wire.sym} 640 70 0 0 {name=p5 sig_type=std_logic lab=vss

}
C {devices/ammeter.sym} 640 100 0 0 {name=Vs_i_bsim}
C {devices/lab_wire.sym} 830 -60 0 0 {name=p6 sig_type=std_logic lab=vout2
}
C {devices/lab_wire.sym} 460 -60 0 0 {name=p8 sig_type=std_logic lab=vin
}
C {symbols/nfet_03v3.sym} 620 -20 0 0 {name=M1
L=0.3u
W=5u
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
C {symbols/pfet_03v3.sym} 620 -110 0 0 {name=M2
L=0.3u
W=5u
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
C {devices/ammeter.sym} 130 120 0 0 {name=Vs_i_acm}
C {devices/gnd.sym} 130 170 0 0 {name=l1 lab=GND}
C {/home/lci-ufsc/Desktop/work_gf180/ACM/nmos_acm.sym} 120 -20 0 0 {name=N1 
model=NMOS_ACM 
w=5u 
l=0.30u 
n=1.383 
is=1.076u 
vt0=0.6493
sigma=26.3m 
zeta=6.8m
}
C {/home/lci-ufsc/Desktop/work_gf180/ACM/pmos_acm.sym} 120 -110 0 0 {name=N2 
model=PMOS_ACM 
w=5u 
l=0.3u 
n=1.42 
is=0.35u 
vt0=0.7523
sigma=19.2m 
zeta=7m
}
