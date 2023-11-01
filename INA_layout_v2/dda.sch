v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -440 -480 -340 -480 {
lab=AVDD}
N -650 -250 -650 -220 {
lab=AVDD}
N -700 -300 -700 -220 {
lab=VIT_P1}
N -700 -300 -600 -300 {
lab=VIT_P1}
N -600 -300 -600 -220 {
lab=VIT_P1}
N -130 -250 -130 -220 {
lab=AVDD}
N -180 -300 -180 -220 {
lab=VIT_P2}
N -180 -300 -80 -300 {
lab=VIT_P2}
N -80 -300 -80 -220 {
lab=VIT_P2}
N -310 -130 -280 -130 {
lab=VI_2A}
N -500 -130 -470 -130 {
lab=VI_1B}
N -830 -130 -800 -130 {
lab=VI_1A}
N 20 -130 50 -130 {
lab=VI_2B}
N -340 -300 -180 -300 {
lab=VIT_P2}
N -600 -300 -440 -300 {
lab=VIT_P1}
N -570 -390 -540 -390 {
lab=VB1}
N -240 -390 -210 -390 {
lab=VB1}
N 410 -250 410 -220 {
lab=AVDD}
N 230 -130 260 -130 {
lab=VB4}
N 560 -130 590 -130 {
lab=VB4}
N 230 -390 260 -390 {
lab=VCMFB}
N 560 -390 590 -390 {
lab=VCMFB}
N 360 -300 360 -220 {
lab=VD5}
N 460 -300 460 -220 {
lab=VD6}
N 360 -480 460 -480 {
lab=AVDD}
N 360 -40 360 40 {
lab=VO1}
N 460 -40 460 40 {
lab=VO2}
N 410 220 410 250 {
lab=AVSS}
N 360 220 360 300 {
lab=SUM_P}
N 460 220 460 300 {
lab=SUM_N}
N 360 480 460 480 {
lab=AVSS}
N 670 130 700 130 {
lab=VO1}
N 230 390 260 390 {
lab=VB2}
N 560 390 590 390 {
lab=VB2}
N -600 -40 -180 -40 {
lab=SUM_N}
N -700 -40 -700 -0 {
lab=SUM_P}
N -700 -0 -80 -0 {
lab=SUM_P}
N -80 -40 -80 -0 {
lab=SUM_P}
N 1050 -480 1150 -480 {
lab=AVDD}
N 920 -390 950 -390 {
lab=VCMFB}
N 1250 -390 1280 -390 {
lab=VCMFB}
N 1050 480 1150 480 {
lab=AVSS}
N 920 390 950 390 {
lab=VB2}
N 1250 390 1280 390 {
lab=VB2}
N 850 220 850 250 {
lab=AVSS}
N 1350 220 1350 250 {
lab=AVSS}
N 230 130 260 130 {
lab=VB3}
N 560 130 590 130 {
lab=VB3}
N 1500 130 1530 130 {
lab=VO2}
N 1300 220 1300 300 {
lab=VIT_N2}
N 1300 300 1400 300 {
lab=VIT_N2}
N 1400 220 1400 300 {
lab=VIT_N2}
N 800 220 800 300 {
lab=VIT_N1}
N 800 300 900 300 {
lab=VIT_N1}
N 900 220 900 300 {
lab=VIT_N1}
N 900 300 1050 300 {
lab=VIT_N1}
N 950 -130 950 -40 {
lab=VD1}
N 950 -40 1050 -40 {
lab=VD1}
N 1150 -40 1250 -40 {
lab=VD2}
N 1250 -130 1250 -40 {
lab=VD2}
N 1050 -220 1150 -220 {
lab=AVDD}
N 900 -300 900 40 {
lab=VCMFB}
N 900 -300 1050 -300 {
lab=VCMFB}
N 1300 -300 1300 40 {
lab=VCMFB}
N 1150 -300 1300 -300 {
lab=VCMFB}
N 1150 300 1300 300 {
lab=VIT_N2}
N 1000 130 1200 130 {
lab=VCM}
N 1400 -70 1400 40 {
lab=VD2}
N 800 -70 800 40 {
lab=VD1}
N 920 -390 920 -300 {
lab=VCMFB}
N 1280 -390 1280 -300 {
lab=VCMFB}
C {devices/iopin.sym} -410 -480 1 1 {name=p1 lab=AVDD}
C {devices/iopin.sym} -830 -130 0 1 {name=p2 lab=VI_1A}
C {devices/iopin.sym} -470 -130 0 0 {name=p3 lab=VI_1B}
C {devices/iopin.sym} -310 -130 0 1 {name=p4 lab=VI_2A}
C {devices/iopin.sym} 50 -130 0 0 {name=p5 lab=VI_2B}
C {devices/iopin.sym} 360 0 0 1 {name=p6 lab=VO1}
C {devices/iopin.sym} 460 0 0 0 {name=p7 lab=VO2}
C {devices/iopin.sym} -570 -390 0 1 {name=p8 lab=VB1}
C {devices/iopin.sym} 230 390 0 1 {name=p9 lab=VB2}
C {devices/iopin.sym} 230 130 0 1 {name=p10 lab=VB3}
C {devices/iopin.sym} 230 -130 0 1 {name=p11 lab=VB4}
C {devices/iopin.sym} 1100 130 3 1 {name=p12 lab=VCM}
C {devices/iopin.sym} 1080 480 3 1 {name=p13 lab=AVSS}
C {devices/lab_wire.sym} -210 -390 0 1 {name=p14 sig_type=std_logic lab=VB1}
C {devices/lab_wire.sym} 590 390 0 1 {name=p15 sig_type=std_logic lab=VB2}
C {devices/lab_wire.sym} 1280 390 0 1 {name=p16 sig_type=std_logic lab=VB2}
C {devices/lab_wire.sym} 920 390 0 0 {name=p17 sig_type=std_logic lab=VB2}
C {devices/lab_wire.sym} 590 130 0 1 {name=p18 sig_type=std_logic lab=VB3}
C {devices/lab_wire.sym} 590 -130 0 1 {name=p19 sig_type=std_logic lab=VB4}
C {devices/lab_wire.sym} 590 -390 0 1 {name=p20 sig_type=std_logic lab=VCMFB}
C {devices/lab_wire.sym} 230 -390 0 0 {name=p21 sig_type=std_logic lab=VCMFB}
C {devices/lab_wire.sym} 1280 -390 0 1 {name=p22 sig_type=std_logic lab=VCMFB}
C {devices/lab_wire.sym} 920 -390 0 0 {name=p23 sig_type=std_logic lab=VCMFB}
C {devices/lab_wire.sym} 670 130 0 0 {name=p24 sig_type=std_logic lab=VO1}
C {devices/lab_wire.sym} 1530 130 0 1 {name=p25 sig_type=std_logic lab=VO2}
C {devices/lab_wire.sym} -360 -40 0 0 {name=p26 sig_type=std_logic lab=SUM_N}
C {devices/lab_wire.sym} -700 0 0 0 {name=p27 sig_type=std_logic lab=SUM_P}
C {devices/lab_wire.sym} 360 280 0 0 {name=p28 sig_type=std_logic lab=SUM_P}
C {devices/lab_wire.sym} 460 280 0 1 {name=p29 sig_type=std_logic lab=SUM_N}
C {devices/lab_wire.sym} 800 300 0 0 {name=p30 sig_type=std_logic lab=VIT_N1}
C {devices/lab_wire.sym} 1400 300 0 1 {name=p31 sig_type=std_logic lab=VIT_N2}
C {devices/lab_wire.sym} -700 -300 0 0 {name=p32 sig_type=std_logic lab=VIT_P1}
C {devices/lab_wire.sym} -80 -300 0 1 {name=p33 sig_type=std_logic lab=VIT_P2}
C {devices/lab_wire.sym} 950 -40 0 0 {name=p34 sig_type=std_logic lab=VD1}
C {devices/lab_wire.sym} 1250 -40 0 1 {name=p35 sig_type=std_logic lab=VD2}
C {devices/lab_wire.sym} 800 -70 0 0 {name=p36 sig_type=std_logic lab=VD1}
C {devices/lab_wire.sym} 1400 -70 0 1 {name=p37 sig_type=std_logic lab=VD2}
C {devices/lab_wire.sym} 360 -250 0 0 {name=p38 sig_type=std_logic lab=VD5}
C {devices/lab_wire.sym} 460 -250 0 1 {name=p39 sig_type=std_logic lab=VD6}
C {devices/lab_wire.sym} 460 -480 0 1 {name=p40 sig_type=std_logic lab=AVDD}
C {devices/lab_wire.sym} -650 -250 0 1 {name=p41 sig_type=std_logic lab=AVDD}
C {devices/lab_wire.sym} -130 -250 0 1 {name=p42 sig_type=std_logic lab=AVDD}
C {devices/lab_wire.sym} 410 -250 0 1 {name=p43 sig_type=std_logic lab=AVDD}
C {devices/lab_wire.sym} 1150 -480 0 1 {name=p44 sig_type=std_logic lab=AVDD}
C {devices/lab_wire.sym} 1150 -220 0 1 {name=p45 sig_type=std_logic lab=AVDD}
C {devices/lab_wire.sym} 360 480 2 1 {name=p46 sig_type=std_logic lab=AVSS}
C {devices/lab_wire.sym} 410 250 2 1 {name=p47 sig_type=std_logic lab=AVSS}
C {devices/lab_wire.sym} 850 250 2 1 {name=p48 sig_type=std_logic lab=AVSS}
C {devices/lab_wire.sym} 1350 250 2 1 {name=p49 sig_type=std_logic lab=AVSS}
C {INA_layout_v2/pfets_8x.sym} -390 -390 0 0 {name=x1}
C {INA_layout_v2/pfets_4x.sym} -650 -130 0 0 {name=x2}
C {INA_layout_v2/pfets_4x.sym} -130 -130 0 0 {name=x3}
C {INA_layout_v2/pfets_4x.sym} 410 -130 0 0 {name=x6}
C {INA_layout_v2/pfets_4x.sym} 410 -390 0 0 {name=x7}
C {INA_layout_v2/pfets_4x.sym} 1100 -130 0 0 {name=x9}
C {INA_layout_v2/nfets_2x.sym} 410 130 0 0 {name=x5}
C {INA_layout_v2/nfets_2x.sym} 850 130 0 0 {name=x10}
C {INA_layout_v2/nfets_2x.sym} 1350 130 0 1 {name=x11}
C {INA_layout_v2/nfets_4x.sym} 1100 390 0 0 {name=x12}
C {INA_layout_v2/nfets_4x.sym} 410 390 0 0 {name=x4}
C {INA_layout_v2/pfets_4x.sym} 1100 -390 0 0 {name=x8}
