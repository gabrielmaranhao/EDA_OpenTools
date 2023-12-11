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
N 370 -150 370 -140 {
lab=GND}
N 370 -380 470 -380 {
lab=vd}
N 370 -380 370 -290 {
lab=vd}
N 240 -260 330 -260 {
lab=vg}
N 240 -200 240 -180 {
lab=GND}
N 470 -380 470 -370 {
lab=vd}
N 470 -310 470 -290 {
lab=GND}
N 720 -260 810 -260 {
lab=#net2}
N 810 -200 810 -190 {
lab=GND}
N 720 -380 820 -380 {
lab=#net3}
N 720 -380 720 -290 {
lab=#net3}
N 590 -260 680 -260 {
lab=vg}
N 820 -380 820 -370 {
lab=#net3}
N 820 -310 820 -290 {
lab=GND}
N 720 -230 720 -190 {
lab=#net4}
N 370 -230 370 -210 {
lab=#net5}
C {devices/vsource.sym} 240 -230 0 0 {name=VG value=0}
C {devices/vsource.sym} 370 -180 0 0 {name=VD1 value=\{vd\}}
C {devices/vsource.sym} 460 -230 0 0 {name=VB value=1.5}
C {devices/gnd.sym} 470 -290 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 460 -190 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 370 -140 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 240 -180 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 470 -340 0 0 {name=VS value=1.5}
C {devices/vsource.sym} 810 -230 0 0 {name=VB3 value=1.5}
C {devices/gnd.sym} 820 -290 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 810 -190 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 820 -340 0 0 {name=VS_acm value=1.5}
C {devices/lab_wire.sym} 280 -260 0 0 {name=p1 sig_type=std_logic lab=vg
}
C {devices/lab_wire.sym} 420 -380 0 0 {name=p2 sig_type=std_logic lab=vd

}
C {devices/vsource.sym} 720 -160 0 0 {name=VD2 value=\{vd\}}
C {devices/gnd.sym} 720 -130 0 0 {name=l7 lab=GND}
C {devices/launcher.sym} 265 -55 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/PSPvsACM.raw dc"
}
C {devices/code_shown.sym} -570 -40 0 0 {name=NGSPICE only_toplevel=true
value="

.param vd=0

.control
pre_osdi ./psp103_nqs.osdi
pre_osdi /home/gmaranhao/Desktop/gf180_work/ACM/PMOS_ACM_2V0.osdi
save all

dc VG 0 1.5 1m
remzerovec
write PSPvsACM_pmos.raw

.endc 
"}
C {devices/code_shown.sym} -600 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/lab_wire.sym} 640 -260 0 0 {name=p3 sig_type=std_logic lab=vg
}
C {sg13g2_pr/sg13_lv_pmos.sym} 350 -260 0 0 {name=M1
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {/home/gmaranhao/Desktop/ihp130_work/ACM/pmos_acm.sym} 710 -260 0 0 {name=N1 
model=PMOS_ACM 
w=10u 
l=0.12u 
n=1.466 
is=9.391u 
vt0=0.4786
sigma=48.4m 
zeta=31m
}
