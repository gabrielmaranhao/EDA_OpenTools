v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 390 -420 1190 -20 {flags=graph


ypos1=0
ypos2=2

subdivy=1
unity=1


divx=10
subdivx=10

ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0







linewidth_mult=6



x1=1.11022e-16








color="5 4"
node="\\"vo1 db20()\\"
\\"vo2 db20()\\""



y1=-40
xlabmag=1
divy=8

y2=40
x2=12}
B 2 390 -20 1190 380 {flags=graph


ypos1=0
ypos2=2

subdivy=1
unity=1


divx=10
subdivx=10
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0







linewidth_mult=6


















color="7 4"
node="ph_vo1
ph_vo2"




divy=10
x2=12
x1=1.11022e-16
y1=0
y2=200}
B 2 390 -820 1190 -420 {flags=graph


ypos1=0
ypos2=2

subdivy=1
unity=1


divx=10
subdivx=10

ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0







linewidth_mult=6



x1=1.11022e-16








color="5 4"
node="\\"vo1\\"
\\"vo2\\""



y1=-5
xlabmag=1
divy=8


x2=12
y2=30}
N -530 -240 -530 -220 {
lab=vdd}
N -530 -160 -530 -130 {
lab=vss}
N -530 -70 -530 -50 {
lab=GND}
N -250 70 -250 90 {
lab=vdd}
N -250 320 -250 350 {
lab=vss}
N 210 290 260 290 {
lab=vo1}
N 260 350 260 370 {
lab=GND}
N -430 -130 -430 -100 {
lab=#net1}
N -430 -40 -430 -20 {
lab=GND}
N -440 330 -440 350 {
lab=GND}
N -440 270 -370 270 {
lab=#net2}
N -330 -240 -330 -210 {
lab=vin2}
N -330 -150 -330 -130 {
lab=GND}
N -430 -240 -430 -210 {
lab=vin1}
N -430 -150 -430 -130 {
lab=#net1}
N -130 160 -80 160 {
lab=vo2}
N -420 150 -370 150 {
lab=vin1}
N 190 70 240 70 {
lab=vo2}
N 240 130 240 150 {
lab=GND}
N -130 200 -80 200 {
lab=vo1}
N -240 -220 -240 -190 {
lab=vcm}
N -240 -130 -240 -110 {
lab=GND}
N -290 320 -290 350 {
lab=vcm}
N -420 170 -370 170 {
lab=vin2}
N -420 190 -370 190 {
lab=vx}
N -420 210 -370 210 {
lab=vy}
N 60 90 60 140 {
lab=vo2}
N 60 260 60 310 {
lab=vo1}
N 60 430 60 480 {
lab=vx}
N 60 -80 60 -30 {
lab=vy}
C {devices/vsource.sym} -530 -190 0 0 {name=VDD value=1.8}
C {devices/vsource.sym} -530 -100 0 0 {name=VSS value=0}
C {devices/gnd.sym} -530 -50 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -530 -140 0 1 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -530 -230 0 1 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -250 80 0 1 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -250 350 0 1 {name=p10 sig_type=std_logic lab=vss}
C {devices/capa.sym} 260 320 0 0 {name=C1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 260 370 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -430 -20 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -420 150 0 0 {name=p13 sig_type=std_logic lab=vin1}
C {devices/isource.sym} -440 300 2 0 {name=I0 value=2.3u}
C {devices/gnd.sym} -440 350 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -430 -180 0 0 {name=VIN1 value=0}
C {devices/code_shown.sym} -890 -320 0 0 {name=NGSPICE only_toplevel=false value="
*dc VIN2 0.48 0.52 0.1m
.control
save all

set temp = 25
ac dec 10 1 1e12

let ph_vo2 = 180*cph(vo2)/pi
save ph_vo2
let ph_vo1 = 180*cph(vo1)/pi
save ph_vo1

remzerovec
write tb_dda.raw
set appendwrite

op
remzerovec
write tb_dda.raw

.endc
"}
C {devices/lab_wire.sym} 220 290 0 1 {name=p11 sig_type=std_logic lab=vo1}
C {sky130_fd_pr/corner.sym} -570 -420 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -340 -410 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -330 -350 0 0 {name=h17 
descr="Load/unload waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw ac

"
}
C {devices/gnd.sym} -330 -130 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -330 -220 0 1 {name=p14 sig_type=std_logic lab=vin2}
C {devices/vsource.sym} -330 -180 0 0 {name=VIN2 value=0}
C {devices/lab_wire.sym} -430 -240 0 1 {name=p18 sig_type=std_logic lab=vin1}
C {devices/vsource.sym} -430 -70 0 0 {name=VIN value="0 AC 1"}
C {devices/lab_wire.sym} -100 160 0 1 {name=p12 sig_type=std_logic lab=vo2}
C {devices/capa.sym} 240 100 0 0 {name=C2
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 240 150 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 200 70 0 1 {name=p4 sig_type=std_logic lab=vo2}
C {devices/lab_wire.sym} -100 200 0 1 {name=p15 sig_type=std_logic lab=vo1}
C {devices/gnd.sym} -240 -110 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} -240 -200 0 1 {name=p19 sig_type=std_logic lab=vcm}
C {devices/vsource.sym} -240 -160 0 0 {name=VIN3 value=0.9}
C {devices/lab_wire.sym} -290 350 0 0 {name=p20 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} -420 170 0 0 {name=p23 sig_type=std_logic lab=vin2}
C {devices/lab_wire.sym} -420 190 0 0 {name=p17 sig_type=std_logic lab=vx
}
C {devices/lab_wire.sym} -420 210 0 0 {name=p24 sig_type=std_logic lab=vy}
C {devices/res.sym} 60 60 0 0 {name=R2x
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 60 170 0 0 {name=R1
value=60k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 60 340 0 0 {name=R2y
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 60 290 0 1 {name=p25 sig_type=std_logic lab=vo1}
C {devices/lab_wire.sym} 60 120 0 1 {name=p26 sig_type=std_logic lab=vo2}
C {devices/lab_wire.sym} 60 460 0 0 {name=p27 sig_type=std_logic lab=vx
}
C {devices/lab_wire.sym} 60 -60 0 0 {name=p28 sig_type=std_logic lab=vy}
C {devices/ammeter.sym} -160 160 3 0 {name=V_ioU3}
C {devices/ammeter.sym} -160 200 3 0 {name=V_ioU1}
C {devices/ammeter.sym} 60 400 0 0 {name=V_ioU2}
C {devices/ammeter.sym} 60 0 0 0 {name=V_ioU4}
C {devices/ammeter.sym} 60 230 0 0 {name=V_ioU5}
C {INA_layout_v2/ina_top.sym} -280 180 0 0 {name=x1}
