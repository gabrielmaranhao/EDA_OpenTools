v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -130 -100 80 {
lab=VB1}
N -40 -130 -40 -40 {
lab=VB3}
N -210 150 -150 150 {
lab=IREF}
N -0 220 -0 260 {
lab=AVSS}
N -40 40 -40 80 {
lab=AVSS}
N 100 -130 100 -90 {
lab=AVDD}
N 0 -310 0 -270 {
lab=AVDD}
N 100 -10 100 80 {
lab=VB4}
N 40 -130 40 80 {
lab=VB2}
C {devices/iopin.sym} -210 150 0 1 {name=p1 lab=IREF}
C {devices/iopin.sym} -100 -60 0 1 {name=p2 lab=VB1}
C {devices/iopin.sym} 40 -70 0 1 {name=p3 lab=VB2}
C {devices/iopin.sym} -40 -80 0 1 {name=p4 lab=VB3}
C {devices/iopin.sym} 100 10 0 0 {name=p5 lab=VB4}
C {devices/iopin.sym} 0 -310 0 0 {name=p6 lab=AVDD}
C {devices/iopin.sym} 0 260 0 0 {name=p7 lab=AVSS}
C {devices/lab_wire.sym} -40 80 0 0 {name=p8 sig_type=std_logic lab=AVSS}
C {devices/lab_wire.sym} 100 -130 0 1 {name=p9 sig_type=std_logic lab=AVDD}
C {INA_layout_v2/bias/nbias_vb124.sym} 0 150 0 0 {name=x1}
C {INA_layout_v2/bias/pbias_vb123.sym} 0 -200 0 0 {name=x2}
C {INA_layout_v2/bias/pbias_vb4.sym} 100 -50 0 0 {name=x4}
C {INA_layout_v2/bias/nbias_vb3.sym} -40 0 0 0 {name=x3}
