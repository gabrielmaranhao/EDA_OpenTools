v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 200 -30 1100 520 {flags=graph
y1=6.7e-10

ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=0
logy=0
rainbow=1

x2=1.5
y2=0.0081
linewidth_mult=4

color="5 4"
node="i(vs_acm)
i(vs)"
dataset=-1}
N 370 -260 460 -260 {
lab=#net1}
N 460 -200 460 -190 {
lab=GND}
N 470 -320 470 -310 {
lab=GND}
N 370 -380 470 -380 {
lab=vd}
N 370 -380 370 -290 {
lab=vd}
N 240 -260 330 -260 {
lab=vg}
N 240 -200 240 -180 {
lab=GND}
N 370 -230 370 -220 {
lab=#net2}
N 370 -160 370 -140 {
lab=GND}
N 720 -260 810 -260 {
lab=#net3}
N 810 -200 810 -190 {
lab=GND}
N 720 -380 820 -380 {
lab=#net4}
N 720 -380 720 -290 {
lab=#net4}
N 590 -260 680 -260 {
lab=vg}
N 720 -230 720 -220 {
lab=#net5}
N 720 -160 720 -140 {
lab=GND}
C {devices/vsource.sym} 240 -230 0 0 {name=VG value=0}
C {devices/vsource.sym} 470 -350 0 0 {name=VD1 value=\{vd\}}
C {devices/vsource.sym} 460 -230 0 0 {name=VB value=0}
C {devices/gnd.sym} 370 -140 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 460 -190 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 470 -310 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 240 -180 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 370 -190 0 0 {name=VS value=0}
C {/home/gmaranhao/Desktop/gf180_work/ACM/nmos_acm.sym} 710 -260 0 0 {name=N1 
model=NMOS_ACM 
w=10u 
l=0.12u 
n=1.414 
is=11.77u 
vt0=0.4902
sigma=53.4m 
zeta=7m
}
C {devices/vsource.sym} 810 -230 0 0 {name=VB3 value=0}
C {devices/gnd.sym} 720 -140 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 810 -190 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 720 -190 0 0 {name=VS_acm value=0}
C {devices/lab_wire.sym} 280 -260 0 0 {name=p1 sig_type=std_logic lab=vg
}
C {devices/lab_wire.sym} 420 -380 0 0 {name=p2 sig_type=std_logic lab=vd

}
C {devices/vsource.sym} 820 -350 0 0 {name=VD2 value=\{vd\}}
C {devices/gnd.sym} 820 -320 0 0 {name=l7 lab=GND}
C {devices/launcher.sym} 265 -55 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/PSPvsACM.raw dc"
}
C {devices/code_shown.sym} -450 -90 0 0 {name=NGSPICE only_toplevel=true
value="

.param vd=1.5

.control
pre_osdi ./psp103_nqs.osdi
pre_osdi /home/gmaranhao/Desktop/gf180_work/ACM/NMOS_ACM_2V0.osdi
save all



dc VG 0 1.5 1m
*let gm = deriv(i(vs))
*save gm
remzerovec
write PSPvsACM.raw
set appendwrite

*dc VG1 0 1.5 10m
*let gm = deriv(i(vs_acm))
*save gm
*remzerovec
*write PSPvsACM.raw

.endc 
"}
C {devices/code_shown.sym} -460 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.model NMOS_ACM nmos_ACM
"}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 -260 2 1 {name=M1
L=0.12u
W=10.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 640 -260 0 0 {name=p3 sig_type=std_logic lab=vg
}
