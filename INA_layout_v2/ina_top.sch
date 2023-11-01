v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 10 40 10 {
lab=VB1}
N -80 30 40 30 {
lab=VB2}
N -80 50 40 50 {
lab=VB3}
N -80 70 40 70 {
lab=VB4}
N -230 180 160 180 {
lab=AVSS}
N 160 100 160 180 {
lab=AVSS}
N 120 100 120 140 {
lab=VCM}
N 330 40 380 40 {
lab=VO1}
N 300 -150 350 -150 {
lab=VO2}
N -230 -130 160 -130 {
lab=AVDD}
N -230 -130 -230 -40 {
lab=AVDD}
N -550 30 -490 30 {
lab=IREF}
N -10 -30 40 -30 {
lab=VI_2A}
N -10 -70 40 -70 {
lab=VI_1A}
N -10 -10 40 -10 {
lab=VI_2B}
N -10 -50 40 -50 {
lab=VI_1B}
N -430 30 -380 30 {
lab=IREF}
N 220 -60 270 -60 {
lab=VO2}
N 220 -20 270 -20 {
lab=VO1}
N 270 -120 270 -60 {
lab=VO2}
N 270 -20 270 40 {
lab=VO1}
N -290 -130 -230 -130 {
lab=AVDD}
N 270 -150 270 -120 {
lab=VO2}
N 270 -150 300 -150 {
lab=VO2}
N 270 40 330 40 {
lab=VO1}
C {devices/iopin.sym} -550 30 0 1 {name=p1 lab=IREF}
C {INA_layout_v2/dda.sym} 130 -40 0 0 {name=x1}
C {devices/iopin.sym} -610 -280 0 1 {name=p2 lab=VI_1A}
C {devices/iopin.sym} -330 -280 0 1 {name=p3 lab=VI_1B}
C {devices/iopin.sym} -40 -280 0 1 {name=p4 lab=VI_2A}
C {devices/iopin.sym} 260 -280 0 1 {name=p5 lab=VI_2B}
C {devices/iopin.sym} 350 -150 0 0 {name=p6 lab=VO2}
C {devices/iopin.sym} 380 40 0 0 {name=p7 lab=VO1}
C {devices/iopin.sym} 230 220 0 1 {name=p8 lab=VCM}
C {devices/iopin.sym} -290 -130 0 1 {name=p9 lab=AVDD}
C {devices/iopin.sym} 160 140 0 0 {name=p10 lab=AVSS}
C {devices/lab_wire.sym} 20 10 0 0 {name=p11 sig_type=std_logic lab=VB1}
C {devices/lab_wire.sym} 20 30 0 0 {name=p12 sig_type=std_logic lab=VB2}
C {devices/lab_wire.sym} 20 50 0 0 {name=p13 sig_type=std_logic lab=VB3}
C {devices/lab_wire.sym} 20 70 0 0 {name=p14 sig_type=std_logic lab=VB4}
C {INA_layout_v2/bias/bias.sym} -230 70 0 0 {name=x2}
C {devices/lab_wire.sym} -10 -70 0 0 {name=p29 sig_type=std_logic lab=VI_1A}
C {devices/lab_wire.sym} -10 -50 0 0 {name=p32 sig_type=std_logic lab=VI_1B}
C {devices/lab_wire.sym} -10 -30 0 0 {name=p33 sig_type=std_logic lab=VI_2A}
C {devices/lab_wire.sym} -10 -10 0 0 {name=p34 sig_type=std_logic lab=VI_2B}
C {devices/lab_wire.sym} 120 140 0 0 {name=p42 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} -410 30 0 1 {name=p43 sig_type=std_logic lab=IREF}
