v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 70 -150 580 240 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6

xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0





















linewidth_mult=4.0
subdivx=3



x2=0




y1=0.013
y2=0.035
color=4
node=sigma
x1=-4}
N -330 40 -310 40 {
lab=GND}
N -530 -90 -530 -70 {
lab=VDD}
N -530 -10 -530 0 {
lab=GND}
N -570 -90 -530 -90 {
lab=VDD}
N -220 70 -220 110 {
lab=VDD}
N -240 70 -220 70 {
lab=VDD}
N -220 140 -210 140 {
lab=VDD}
N -210 90 -210 140 {
lab=VDD}
N -220 90 -210 90 {
lab=VDD}
N -310 140 -260 140 {
lab=Vg}
N -220 170 -220 230 {
lab=#net1}
N -370 90 -370 140 {
lab=Vg}
N -370 140 -310 140 {
lab=Vg}
N -90 -20 -90 20 {
lab=Vd}
N -350 -20 -90 -20 {
lab=Vd}
N -350 -20 -350 0 {
lab=Vd}
N -420 -0 -390 -0 {
lab=#net1}
N -420 -0 -420 230 {
lab=#net1}
N -420 230 -220 230 {
lab=#net1}
N -90 80 -90 110 {
lab=GND}
N -220 290 -220 310 {
lab=GND}
C {devices/launcher.sym} 135 -175 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code_shown.sym} -410 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code.sym} -420 -190 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
save all

dc Vd_bias  0 -4 -25.9m

let vd_interp = -3.3/3
let sigma = -deriv(V(vg))/deriv(V(vd))
save sigma

echo
echo
echo


echo Sigma @ VD=$&vd_interp:
meas dc sigma_value FIND sigma WHEN V(vd)=vd_interp

echo
echo
echo
write pmos_sigma_ext.raw

.endc


" }
C {/home/gmaranhao/Desktop/gf180_work/auxLib/ampOp_ideal.sym} -340 -40 3 1 {name=x1}
C {devices/isource.sym} -220 260 0 0 {name=I1 value=10n}
C {devices/vsource.sym} -90 50 0 0 {name=Vd_bias value=0}
C {devices/gnd.sym} -220 310 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -310 40 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -530 -40 0 1 {name=Vdd value=3.3}
C {devices/gnd.sym} -530 0 0 1 {name=l3 lab=GND}
C {devices/lab_wire.sym} -280 140 0 0 {name=p1 sig_type=std_logic lab=Vg}
C {devices/lab_wire.sym} -230 -20 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {symbols/pfet_03v3.sym} -240 140 0 0 {name=M1
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
C {devices/lab_wire.sym} -550 -90 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -220 70 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -90 110 0 0 {name=l4 lab=GND}
