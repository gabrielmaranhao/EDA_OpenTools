v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 680 -510 1190 -110 {flags=graph


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

y1=-9.8
y2=-3.5
x2=1.5
x1=0.05}
N 270 -260 290 -260 {
lab=vg}
N 330 -320 330 -290 {
lab=vg}
N 430 -200 430 -180 {
lab=GND}
N 330 70 330 90 {
lab=GND}
N 330 -260 430 -260 {
lab=#net1}
N 330 -230 330 10 {
lab=#net2}
N 330 -430 450 -430 {
lab=#net3}
N 330 -430 330 -420 {
lab=#net3}
N 450 -370 450 -350 {
lab=GND}
N 270 -320 270 -260 {
lab=vg}
N 210 -260 270 -260 {
lab=vg}
N 270 -320 330 -320 {
lab=vg}
N 330 -370 330 -320 {
lab=vg}
C {devices/vsource.sym} 430 -230 0 0 {name=V3 value=0}
C {devices/vsource.sym} 330 40 0 0 {name=Vs value=0}
C {devices/gnd.sym} 330 90 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 430 -180 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 230 -260 0 0 {name=p1 sig_type=std_logic lab=vg}
C {sg13g2_pr/sg13_lv_nmos.sym} 310 -260 0 0 {name=M1
L=0.12u
W=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/code_shown.sym} -370 -440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/code.sym} -380 -330 0 0 {name=NGSPICE
only_toplevel=true
value="
.option gmin = 1e-24

.control
pre_osdi ./psp103_nqs.osdi
save all

remzerovec
op
write nmos_op.raw

.endc

" }
C {devices/isource.sym} 330 -390 0 0 {name=I0 value=1u}
C {devices/vsource.sym} 450 -400 0 0 {name=Vs1 value=1.5}
C {devices/gnd.sym} 450 -350 0 0 {name=l4 lab=GND}
C {devices/launcher.sym} 650 -560 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
