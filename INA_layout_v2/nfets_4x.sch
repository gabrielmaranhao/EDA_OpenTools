v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -190 -50 -160 {
lab=VD1}
N 50 -190 50 -160 {
lab=VD2}
N -180 -70 -150 -70 {
lab=VG1}
N 150 -70 180 -70 {
lab=VG2}
N -50 20 -50 50 {
lab=VS1}
N 50 20 50 50 {
lab=VS2}
N 0 20 0 50 {
lab=VB}
C {devices/iopin.sym} -50 50 1 0 {name=p1 lab=VS1}
C {devices/iopin.sym} 50 50 1 0 {name=p2 lab=VS2}
C {devices/iopin.sym} 0 50 1 0 {name=p3 lab=VB}
C {devices/iopin.sym} -180 -70 2 0 {name=p4 lab=VG1}
C {devices/iopin.sym} 180 -70 0 0 {name=p5 lab=VG2}
C {devices/iopin.sym} -50 -190 3 0 {name=p6 lab=VD1}
C {devices/iopin.sym} 50 -190 3 0 {name=p7 lab=VD2}
C {INA_layout_v2/nfets_2x.sym} 0 -70 0 0 {name=x1[2:1]}
