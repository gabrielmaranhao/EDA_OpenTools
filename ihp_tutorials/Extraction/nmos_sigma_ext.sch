v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 40 120 550 510 {flags=graph


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


x1=0.05
x2=1.4745




y1=4.1e-13
y2=1.5

color="5 4"
node="vd
vd2"}
N -210 390 -210 460 {
lab=Vg}
N -320 460 -210 460 {
lab=Vg}
N -360 300 -230 300 {
lab=Vd2}
N -360 300 -360 430 {
lab=Vd2}
N -190 300 -90 300 {
lab=Vd}
N -90 300 -90 400 {
lab=Vd}
N -360 490 -360 510 {
lab=GND}
N -360 510 -90 510 {
lab=GND}
N -90 460 -90 510 {
lab=GND}
N -170 340 -150 340 {
lab=GND}
N -370 460 -360 460 {
lab=GND}
N -370 460 -370 510 {
lab=GND}
N -370 510 -360 510 {
lab=GND}
N -360 210 -360 230 {
lab=#net1}
N -410 210 -360 210 {
lab=#net1}
N -410 210 -410 230 {
lab=#net1}
N -410 290 -410 300 {
lab=GND}
N -360 290 -360 300 {
lab=Vd2}
C {devices/launcher.sym} 105 95 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code.sym} -450 80 0 0 {name=NGSPICE
only_toplevel=true
value="

.option gmin = 1e-18

.nodeset V(vd2)=1.5

.control
pre_osdi ./psp103_nqs.osdi
save all

dc Vd_bias  0.05 1.5 25.9m

let vd_interp = 1.5/3
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
write nmos_sigma_ext.raw

.endc


" }
C {/home/gmaranhao/Desktop/gf180_work/auxLib/ampOp_ideal.sym} -180 260 3 1 {name=x1}
C {devices/isource.sym} -360 260 0 0 {name=I0 value=10n}
C {devices/vsource.sym} -90 430 0 0 {name=Vd_bias value=0}
C {devices/gnd.sym} -220 510 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -150 340 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -410 260 0 1 {name=Vdd value=1.5}
C {devices/gnd.sym} -410 300 0 1 {name=l3 lab=GND}
C {devices/lab_wire.sym} -250 460 0 0 {name=p1 sig_type=std_logic lab=Vg}
C {devices/lab_wire.sym} -120 300 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {sg13g2_pr/sg13_lv_nmos.sym} -340 460 2 0 {name=M1
L=0.12u
W=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/code_shown.sym} -450 -40 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} -270 300 0 0 {name=p3 sig_type=std_logic lab=Vd2}
