v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1020 -210 1740 190 {flags=graph


ypos1=0
ypos2=1.5
divy=5
subdivy=4
unity=1


divx=6
subdivx=3
xlabmag=1.0



dataset=-1
unitx=1
logx=0
logy=0













y2=1.5
x2=1
x1=0
linewidth_mult=4.0
sweep=vd
color="5 4 6"
node="out_psp
out_acm
vin"
digital=1
y1=0
ylabmag=1}
B 2 1020 190 1740 590 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=3
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0












y1=3.4e-08
y2=1
x2=1
x1=0
linewidth_mult=4.0
sweep=vd
color="4 5"
node="out_acm
out_psp"}
B 2 1020 590 1740 990 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=3
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0












y1=4e-10
y2=6e-05
x2=1
x1=0
linewidth_mult=4.0
sweep=vd
color="5 4"
node="i(vi_psp)
i(vi_acm)"}
N 320 600 320 650 {
lab=out_psp}
N 260 520 280 520 {
lab=VIN}
N 260 600 260 680 {
lab=VIN}
N 260 680 280 680 {
lab=VIN}
N 320 680 330 680 {
lab=GND}
N 330 680 330 810 {
lab=GND}
N 330 810 340 810 {
lab=GND}
N 320 810 330 810 {
lab=GND}
N 320 410 320 490 {
lab=VDD1}
N 330 410 330 520 {
lab=VDD1}
N 320 410 330 410 {
lab=VDD1}
N 260 520 260 600 {
lab=VIN}
N 320 600 420 600 {
lab=out_psp}
N 320 550 320 600 {
lab=out_psp}
N 820 590 820 640 {
lab=out_acm}
N 760 510 780 510 {
lab=VIN}
N 760 590 760 670 {
lab=VIN}
N 760 670 780 670 {
lab=VIN}
N 820 670 830 670 {
lab=GND}
N 830 670 830 800 {
lab=GND}
N 830 800 840 800 {
lab=GND}
N 820 800 830 800 {
lab=GND}
N 820 400 820 480 {
lab=VDD2}
N 830 400 830 510 {
lab=VDD2}
N 820 400 830 400 {
lab=VDD2}
N 690 590 760 590 {
lab=VIN}
N 760 510 760 590 {
lab=VIN}
N 820 590 940 590 {
lab=out_acm}
N 820 540 820 590 {
lab=out_acm}
N 210 410 320 410 {
lab=VDD1}
N 210 470 210 480 {
lab=GND}
N 730 460 730 470 {
lab=GND}
N 730 400 820 400 {
lab=VDD2}
N 320 520 330 520 {
lab=VDD1}
N 820 510 830 510 {
lab=VDD2}
N 140 600 260 600 {
lab=VIN}
N 140 660 140 680 {
lab=GND}
N 820 700 820 720 {
lab=#net1}
N 820 780 820 800 {
lab=GND}
N 320 710 320 730 {
lab=#net2}
N 320 790 320 810 {
lab=GND}
N 940 650 940 670 {
lab=GND}
N 420 660 420 680 {
lab=GND}
C {devices/vsource.sym} 210 440 0 1 {name=VDD1 value=1}
C {devices/code.sym} 290 80 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
pre_osdi ./psp103_nqs.osdi
pre_osdi ./NMOS_ACM_2V0.osdi
pre_osdi ./PMOS_ACM_2V0.osdi
save all

remzerovec
tran 1p 100p
write inverter_acm.raw
*wrdata /home/gmaranhao/Desktop/ihp130_work/Inverter_data/inverter_tran_1p5_W10u0_L0u12_V_PSP.txt V(out_psp)
*wrdata /home/gmaranhao/Desktop/ihp130_work/Inverter_data/inverter_tran_1p5_W10u0_L0u12_I_PSP.txt i(Vi_psp) 
*wrdata /home/gmaranhao/Desktop/ihp130_work/Inverter_data/inverter_tran_1p5_W10u0_L0u12_V_ACM.txt V(out_acm) 
*wrdata /home/gmaranhao/Desktop/ihp130_work/Inverter_data/inverter_tran_1p5_W10u0_L0u12_I_ACM.txt i(Vi_acm)
*wrdata /home/gmaranhao/Desktop/ihp130_work/Inverter_data/inverter_tran_1p5_W10u0_L0u12_I_ACM_vin.txt V(VIN)

set appendwrite

remzerovec
dc Vin 0 1 10m
write inverter_acm.raw
*wrdata /home/gmaranhao/Desktop/ihp130_work/Inverter_data/inverter_DC_1p0_W10u0_L0u12_V_PSP.txt V(out_psp)
*wrdata /home/gmaranhao/Desktop/ihp130_work/Inverter_data/inverter_DC_1p0_W10u0_L0u12_I_PSP.txt i(Vi_psp) 
*wrdata /home/gmaranhao/Desktop/ihp130_work/Inverter_data/inverter_DC_1p0_W10u0_L0u12_V_ACM.txt V(out_acm) 
*wrdata /home/gmaranhao/Desktop/ihp130_work/Inverter_data/inverter_DC_1p0_W10u0_L0u12_I_ACM.txt i(Vi_acm)

.endc

" }
C {devices/code_shown.sym} 300 -40 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {sg13g2_pr/sg13_lv_nmos.sym} 300 680 2 1 {name=M1
L=0.12u
W=10.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 520 0 0 {name=M2
L=0.12u
W=10.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} 220 600 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 720 590 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 330 410 0 0 {name=p6 sig_type=std_logic lab=VDD1}
C {devices/gnd.sym} 210 480 0 1 {name=l6 lab=GND}
C {devices/gnd.sym} 340 810 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 840 800 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 730 430 0 1 {name=VDD2 value=1}
C {devices/gnd.sym} 730 470 0 1 {name=l9 lab=GND}
C {devices/lab_wire.sym} 810 400 0 0 {name=p7 sig_type=std_logic lab=VDD2}
C {/home/gmaranhao/Desktop/ihp130_work/ACM/nmos_acm.sym} 810 670 0 0 {name=N1 
model=NMOS_ACM 
w=10u 
l=0.12u 
n=1.414 
is=11.77u 
vt0=0.4902
sigma=53.4m 
zeta=7m
}
C {/home/gmaranhao/Desktop/ihp130_work/ACM/pmos_acm.sym} 810 510 0 0 {name=N2 
model=PMOS_ACM 
w=10u 
l=0.12u 
n=1.466 
is=9.391u 
vt0=0.4786
sigma=48.4m 
zeta=31m
}
C {devices/gnd.sym} 140 680 0 1 {name=l1 lab=GND}
C {devices/vsource.sym} 140 630 0 1 {name=Vin 
value="pulse(0 1.5 10p 10p 10p 200p 400p)"}
C {devices/launcher.sym} 445 275 0 0 {name=h2 
descr="Load/unload Transient Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/launcher.sym} 445 325 0 0 {name=h3 
descr="Load/unload DC Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/lab_wire.sym} 410 600 0 0 {name=p1 sig_type=std_logic lab=out_psp}
C {devices/lab_wire.sym} 900 590 0 0 {name=p2 sig_type=std_logic lab=out_acm}
C {devices/ammeter.sym} 320 760 0 1 {name=Vi_psp savecurrent=true}
C {devices/ammeter.sym} 820 750 0 1 {name=Vi_acm savecurrent=true}
C {devices/capa.sym} 940 620 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 940 670 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 420 630 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 420 680 0 0 {name=l3 lab=GND}
