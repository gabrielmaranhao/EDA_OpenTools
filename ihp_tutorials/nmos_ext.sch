v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 150 -400 660 -10 {flags=graph


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

color=5
x1=0
x2=1.5
node=i(gm_id)



y1=0.4
y2=32
sweep=vg}
B 2 150 -10 660 390 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1


divx=6
subdivx=3
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=1





color=4




node=i(vs)

y1=-11
y2=-5.3
x2=1.5
x1=0
linewidth_mult=4.0
sweep=vg}
N -340 60 -260 60 {
lab=vg}
N -220 -50 -220 30 {
lab=#net1}
N -220 -50 -140 -50 {
lab=#net1}
N -220 90 -220 140 {
lab=#net2}
N -140 10 -140 20 {
lab=GND}
N -120 120 -120 140 {
lab=GND}
N -220 200 -220 220 {
lab=GND}
N -340 120 -340 140 {
lab=GND}
N -220 60 -120 60 {
lab=#net3}
C {devices/vsource.sym} -140 -20 0 0 {name=Vds value=13m}
C {devices/vsource.sym} -120 90 0 0 {name=V3 value=0}
C {devices/vsource.sym} -220 170 0 0 {name=Vs value=0}
C {devices/gnd.sym} -340 140 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -220 220 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -120 140 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -140 20 0 0 {name=l4 lab=GND}
C {devices/launcher.sym} -295 -115 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/nmos_ext.raw dc"
}
C {devices/vsource.sym} -340 90 0 0 {name=Vgb value=0}
C {devices/code.sym} -370 -270 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
pre_osdi ./psp103_nqs.osdi
save all

op
remzerovec
write nmos_ext.raw
set appendwrite

dc Vgb 0 1.5 1m

let gm_id = deriv(ln(i(Vs)))
save gm_id

meas dc gm_id_max MAX gm_id
let gm_id_vt = 0.531*gm_id_max
save gm_id_vt

meas dc vt0 FIND V(vg) WHEN gm_id=gm_id_vt
meas dc is_ FIND i(Vs) WHEN V(vg)=vt0

let is = is_/0.88
let VT_val=0.026
let n = 1/(gm_id_max*VT_val)
save is vt0 n
echo
echo
echo

echo Extracted parameters:
print is vt0 n

echo
echo
echo

remzerovec
write nmos_ext.raw

.endc

" }
C {devices/lab_wire.sym} -290 60 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/code_shown.sym} -370 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {sg13g2_pr/sg13_lv_nmos.sym} -240 60 2 1 {name=M1
L=0.12u
W=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/launcher.sym} -90 -200 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
