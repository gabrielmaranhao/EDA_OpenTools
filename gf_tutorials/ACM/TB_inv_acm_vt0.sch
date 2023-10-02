v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 180 -200 420 -30 {}
L 4 180 140 420 -30 {}
L 4 180 -200 180 140 {}
B 2 510 -390 1020 10 {flags=graph


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















x1=0.01
color="4 5"
node="\\"Vin;vin\\"
\\"Vout;vout\\""
linewidth_mult=3.0
y2=3.3
y1=0
x2=3.3}
N 50 30 50 50 {
lab=GND}
N 270 70 270 100 {
lab=vss}
N 270 160 270 180 {
lab=GND}
N 270 -210 340 -210 {
lab=vdd}
N 270 -210 270 -140 {
lab=vdd}
N 270 -50 270 -20 {
lab=vout}
N 230 -80 230 10 {
lab=vin}
N 270 10 280 10 {
lab=vss}
N 270 -80 280 -80 {
lab=vdd}
N 280 10 280 50 {
lab=vss}
N 270 50 280 50 {
lab=vss}
N 270 -140 270 -110 {
lab=vdd}
N 270 40 270 70 {
lab=vss}
N 280 -120 280 -80 {
lab=vdd}
N 270 -120 280 -120 {
lab=vdd}
N 270 -30 460 -30 {
lab=vout}
N 170 -30 230 -30 {
lab=vin}
N 50 -30 170 -30 {
lab=vin}
C {devices/code_shown.sym} -20 -440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/launcher.sym} 565 -415 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload DC Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code.sym} -30 -310 0 0 {name=NGSPICE only_toplevel=true

value="
.option gmin=1e-18
.control
pre_osdi /home/gmaranhao/Desktop/gf180_work/ACM/NMOS_ACM_2V0.osdi
pre_osdi /home/gmaranhao/Desktop/gf180_work/ACM/PMOS_ACM_2V0.osdi
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
C {devices/vsource.sym} 50 0 0 1 {name=VIN 
value=0}
C {devices/vsource.sym} 340 -180 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 340 -150 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 50 50 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 270 180 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 310 -210 0 0 {name=p3 sig_type=std_logic lab=vdd

}
C {devices/lab_wire.sym} 270 100 0 0 {name=p4 sig_type=std_logic lab=vss

}
C {devices/ammeter.sym} 270 130 0 0 {name=Vs_i}
C {devices/launcher.sym} 560 -450 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {/home/gmaranhao/Desktop/gf180_work/ACM/nmos_acm.sym} 260 10 0 0 {name=N2 
model=NMOS_ACM 
w=5u 
l=0.18u 
n=1.37 
is=5.52u 
vt0=0.558
sigma=27m 
zeta=56m
}
C {/home/gmaranhao/Desktop/gf180_work/ACM/pmos_acm.sym} 260 -80 0 0 {name=N1 
model=PMOS_ACM 
w=5u 
l=0.18u 
n=1.40 
is=1.82u 
vt0=0.525
sigma=24m 
zeta=35m
}
C {devices/lab_wire.sym} 460 -30 0 0 {name=p2 sig_type=std_logic lab=vout
}
C {devices/lab_wire.sym} 90 -30 0 0 {name=p7 sig_type=std_logic lab=vin
}
