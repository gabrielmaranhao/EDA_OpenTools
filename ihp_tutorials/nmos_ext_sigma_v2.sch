v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 50 120 560 510 {flags=graph


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


x1=0.1
x2=1.5763




y1=1e+07
y2=1.1e+07
color=4
node=sigma}
N -350 340 -350 430 {
lab=#net1}
N -200 390 -200 460 {
lab=Vg}
N -310 460 -200 460 {
lab=Vg}
N -350 300 -220 300 {
lab=#net1}
N -350 290 -350 340 {
lab=#net1}
N -180 300 -80 300 {
lab=Vd}
N -80 300 -80 400 {
lab=Vd}
N -350 490 -350 510 {
lab=GND}
N -350 510 -80 510 {
lab=GND}
N -80 460 -80 510 {
lab=GND}
N -160 340 -140 340 {
lab=GND}
N -360 460 -350 460 {
lab=GND}
N -360 460 -360 510 {
lab=GND}
N -360 510 -350 510 {
lab=GND}
N -350 210 -350 230 {
lab=#net2}
N -400 210 -350 210 {
lab=#net2}
N -400 210 -400 230 {
lab=#net2}
N -400 290 -400 300 {
lab=GND}
C {devices/launcher.sym} 115 95 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/nmos_ext_sigma_v2.raw dc"
}
C {devices/code.sym} -440 80 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
pre_osdi ./psp103_nqs.osdi
save all

dc Vd_bias  0.1 1.6 25.9m

let vd_interp = 1.35/3
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
write nmos_ext_sigma_v2.raw

.endc


" }
C {/home/gmaranhao/Desktop/gf180_work/auxLib/ampOp_ideal.sym} -170 260 3 1 {name=x1}
C {devices/isource.sym} -350 260 0 0 {name=I0 value=10n}
C {devices/vsource.sym} -80 430 0 0 {name=Vd_bias value=}
C {devices/gnd.sym} -210 510 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -140 340 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -400 260 0 1 {name=Vdd value=1.35}
C {devices/gnd.sym} -400 300 0 1 {name=l3 lab=GND}
C {devices/lab_wire.sym} -240 460 0 0 {name=p1 sig_type=std_logic lab=Vg}
C {devices/lab_wire.sym} -110 300 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {devices/code_shown.sym} -450 -60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {sg13g2_pr/sg13_lv_nmos.sym} -330 460 2 0 {name=M1
L=0.15u
W=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
