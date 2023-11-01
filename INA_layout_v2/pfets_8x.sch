v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -120 -50 -90 {
lab=VS1}
N 0 -120 0 -90 {
lab=VB}
N 50 -120 50 -90 {
lab=VS2}
N -50 90 -50 120 {
lab=VD1}
N 50 90 50 120 {
lab=VD2}
N 150 0 180 0 {
lab=VG2}
N -180 0 -150 0 {
lab=VG1}
C {devices/iopin.sym} -50 -120 3 0 {name=p1 lab=VS1}
C {devices/iopin.sym} 50 -120 3 0 {name=p2 lab=VS2}
C {devices/iopin.sym} 0 -120 3 0 {name=p3 lab=VB}
C {devices/iopin.sym} -180 0 2 0 {name=p4 lab=VG1}
C {devices/iopin.sym} 180 0 2 1 {name=p5 lab=VG2}
C {devices/iopin.sym} -50 120 3 1 {name=p6 lab=VD1}
C {devices/iopin.sym} 50 120 3 1 {name=p7 lab=VD2}
C {INA_layout_v2/pfets_4x.sym} 0 0 0 0 {name=x1[2:1]}
