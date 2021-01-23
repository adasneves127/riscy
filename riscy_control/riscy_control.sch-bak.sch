EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x08_Female J3
U 1 1 5FB281A3
P 1000 450
F 0 "J3" V 1165 380 50  0000 C CNN
F 1 "Conn_01x08_Female" V 1074 380 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1000 450 50  0001 C CNN
F 3 "~" H 1000 450 50  0001 C CNN
	1    1000 450 
	0    1    -1   0   
$EndComp
$Comp
L 74xx:74LS154 U2
U 1 1 5FB2B7BB
P 1300 1550
F 0 "U2" V 1254 2594 50  0000 L CNN
F 1 "74LS154" V 1345 2594 50  0000 L CNN
F 2 "Package_DIP:DIP-24_W10.16mm" H 1300 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS154" H 1300 1550 50  0001 C CNN
	1    1300 1550
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS161 U1
U 1 1 5FB2F039
P 5500 800
F 0 "U1" V 5454 1644 50  0000 L CNN
F 1 "74LS161" V 5545 1644 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5500 800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5500 800 50  0001 C CNN
	1    5500 800 
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS139 U3
U 3 1 5FB32A91
P 300 7700
F 0 "U3" H 530 7746 50  0000 L CNN
F 1 "74LS139" H 530 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 300 7700 50  0001 C CNN
F 3 "" H 300 7700 50  0001 C CNN
	3    300  7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U3
U 1 1 5FB36651
P 3200 1550
F 0 "U3" V 3154 1780 50  0000 L CNN
F 1 "74LS139" V 3245 1780 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3200 1550 50  0001 C CNN
F 3 "" H 3200 1550 50  0001 C CNN
	1    3200 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 650  3200 650 
Wire Wire Line
	3200 650  3200 950 
Wire Wire Line
	1200 650  1200 700 
Wire Wire Line
	1200 700  3300 700 
Wire Wire Line
	3300 700  3300 1000
Wire Wire Line
	900  650  900  750 
Wire Wire Line
	900  750  2000 750 
Wire Wire Line
	2000 750  2000 1050
Wire Wire Line
	800  650  800  800 
Wire Wire Line
	800  800  1900 800 
Wire Wire Line
	1900 800  1900 1050
Wire Wire Line
	700  650  700  850 
Wire Wire Line
	700  850  1800 850 
Wire Wire Line
	1800 850  1800 950 
Wire Wire Line
	600  900  1700 900 
Wire Wire Line
	1700 900  1700 1000
Wire Wire Line
	600  650  600  900 
NoConn ~ 1000 650 
NoConn ~ 1100 650 
Wire Wire Line
	6000 1300 6000 1500
Wire Wire Line
	6000 1500 4550 1500
Wire Wire Line
	4550 1500 4550 900 
Wire Wire Line
	4550 900  4100 900 
Wire Wire Line
	4100 900  4100 1050
Wire Wire Line
	5900 1300 5900 1450
Wire Wire Line
	5900 1450 4600 1450
Wire Wire Line
	4600 1450 4600 850 
Wire Wire Line
	4600 850  4200 850 
Wire Wire Line
	4200 850  4200 1050
Text Label 200  1100 0    50   ~ 0
instruction_decoder
Text Label 4250 500  0    50   ~ 0
cycle_counter
Text Label 650  150  0    50   ~ 0
instruction_register
$Comp
L 74xx:74LS00 U4
U 1 1 5FB4247E
P 2400 1050
F 0 "U4" H 2400 1375 50  0000 C CNN
F 1 "74LS00" H 2400 1284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2400 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 2400 1050 50  0001 C CNN
	1    2400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1150 2150 1150
Connection ~ 1700 1000
Wire Wire Line
	1700 1000 1700 1050
Wire Wire Line
	2100 950  1800 950 
Connection ~ 1800 950 
Wire Wire Line
	1800 950  1800 1050
$Comp
L 74xx:74LS00 U4
U 5 1 5FB4519A
P 900 7700
F 0 "U4" H 1130 7746 50  0000 L CNN
F 1 "74LS00" H 1130 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 900 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 900 7700 50  0001 C CNN
	5    900  7700
	1    0    0    -1  
$EndComp
Text GLabel 2700 500  2    50   Output ~ 0
op_sli
Text GLabel 1900 2150 3    50   Output ~ 0
op_sub
Text GLabel 1800 2150 3    50   Output ~ 0
op_load
Text GLabel 1700 2150 3    50   Output ~ 0
op_store
Text GLabel 1600 2150 3    50   Output ~ 0
op_skip
Text GLabel 1500 2150 3    50   Output ~ 0
op_jalr
Text GLabel 1400 2150 3    50   Output ~ 0
op_nand
Text GLabel 1300 2150 3    50   Output ~ 0
op_add
Wire Wire Line
	2700 1050 2700 500 
Text GLabel 1100 2150 3    50   Output ~ 0
op_jmpfar
Text GLabel 1000 2150 3    50   Output ~ 0
op10
Wire Wire Line
	1000 2150 1000 2100
Wire Wire Line
	1300 2050 1300 2150
Wire Wire Line
	1400 2150 1400 2050
Wire Wire Line
	1500 2050 1500 2150
Wire Wire Line
	1600 2150 1600 2050
Wire Wire Line
	1700 2050 1700 2150
Wire Wire Line
	1800 2150 1800 2050
Wire Wire Line
	1900 2050 1900 2150
$Comp
L 74xx:74LS139 U5
U 1 1 5FB55057
P 3050 3200
F 0 "U5" V 3004 3430 50  0000 L CNN
F 1 "74LS139" V 3095 3430 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3050 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 3050 3200 50  0001 C CNN
	1    3050 3200
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS139 U5
U 2 1 5FB5697D
P 4050 3200
F 0 "U5" V 4004 3430 50  0000 L CNN
F 1 "74LS139" V 4095 3430 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4050 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 4050 3200 50  0001 C CNN
	2    4050 3200
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS139 U5
U 3 1 5FB573B7
P 1450 7700
F 0 "U5" H 1680 7746 50  0000 L CNN
F 1 "74LS139" H 1680 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1450 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 1450 7700 50  0001 C CNN
	3    1450 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1050 3000 1050
Wire Wire Line
	1200 2100 1200 2050
Wire Wire Line
	1100 2050 1100 2150
Wire Wire Line
	1000 2100 900  2100
Wire Wire Line
	900  2100 900  2600
Connection ~ 1000 2100
Wire Wire Line
	1000 2100 1000 2050
Wire Wire Line
	1200 2100 2850 2100
Wire Wire Line
	2850 2100 2850 2700
Wire Wire Line
	3850 2600 3850 2700
Wire Wire Line
	900  2600 3850 2600
Text GLabel 4200 2150 3    50   Output ~ 0
cycle_fe
Text GLabel 4100 2150 3    50   Output ~ 0
cycle_de
Text GLabel 4000 2150 3    50   Output ~ 0
cycle_ex
Text GLabel 3900 2150 3    50   Output ~ 0
cycle_3
Wire Wire Line
	3300 1000 3650 1000
Wire Wire Line
	3650 1000 3650 2550
Wire Wire Line
	3650 2550 4150 2550
Wire Wire Line
	4150 2550 4150 2700
Connection ~ 3300 1000
Wire Wire Line
	3300 1000 3300 1050
Wire Wire Line
	3650 2550 3150 2550
Wire Wire Line
	3150 2550 3150 2700
Connection ~ 3650 2550
Wire Wire Line
	3200 950  3600 950 
Wire Wire Line
	3600 950  3600 2500
Wire Wire Line
	3600 2500 3050 2500
Wire Wire Line
	3050 2500 3050 2700
Connection ~ 3200 950 
Wire Wire Line
	3200 950  3200 1050
Wire Wire Line
	4050 2700 4050 2500
Wire Wire Line
	4050 2500 3600 2500
Connection ~ 3600 2500
Wire Wire Line
	4200 2050 4200 2150
Wire Wire Line
	4100 2150 4100 2050
Wire Wire Line
	4000 2050 4000 2150
Wire Wire Line
	3900 2150 3900 2050
NoConn ~ 900  2050
NoConn ~ 800  2050
NoConn ~ 700  2050
NoConn ~ 600  2050
NoConn ~ 500  2050
Text GLabel 3300 2150 3    50   Output ~ 0
op_nop
Text GLabel 3200 2150 3    50   Output ~ 0
op_halt
Text GLabel 3000 2150 3    50   Output ~ 0
op_page
Wire Wire Line
	3300 2150 3300 2050
Wire Wire Line
	3200 2150 3200 2050
Wire Wire Line
	3000 2150 3000 2050
NoConn ~ 3100 2050
Text Label 2850 1350 3    50   ~ 0
op0_decode
Text Label 3750 1400 3    50   ~ 0
cycle_decode
Text Label 2700 3000 3    50   ~ 0
op8_decode
Text Label 3700 3000 3    50   ~ 0
op10_decode
Text GLabel 3150 3750 3    50   Output ~ 0
op_inc
Text GLabel 3050 3750 3    50   Output ~ 0
op_dec
Text GLabel 2950 3750 3    50   Output ~ 0
op_out
Text GLabel 2850 3750 3    50   Output ~ 0
op_in
Wire Wire Line
	3150 3700 3150 3750
Wire Wire Line
	3050 3750 3050 3700
Wire Wire Line
	2950 3700 2950 3750
Wire Wire Line
	2850 3750 2850 3700
Text GLabel 4150 3800 3    50   Output ~ 0
op_push
Text GLabel 4050 3800 3    50   Output ~ 0
op_pop
Text GLabel 3950 3800 3    50   Output ~ 0
op_stackpage
Wire Wire Line
	4150 3800 4150 3700
Wire Wire Line
	4050 3700 4050 3800
Wire Wire Line
	3950 3800 3950 3700
NoConn ~ 3850 3700
Text GLabel 3800 400  3    50   Input ~ 0
halted
Text GLabel 5000 250  1    50   Input ~ 0
reset
Wire Wire Line
	5000 250  5000 300 
Text GLabel 4350 200  1    50   Input ~ 0
CLK
$Comp
L power:+5V #PWR0101
U 1 1 5FBA6F07
P 5550 200
F 0 "#PWR0101" H 5550 50  50  0001 C CNN
F 1 "+5V" H 5565 373 50  0000 C CNN
F 2 "" H 5550 200 50  0001 C CNN
F 3 "" H 5550 200 50  0001 C CNN
	1    5550 200 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 300  5500 200 
Wire Wire Line
	5500 200  5550 200 
Wire Wire Line
	5300 200  5300 300 
Wire Wire Line
	5400 300  5400 200 
Connection ~ 5400 200 
Wire Wire Line
	5400 200  5300 200 
NoConn ~ 5700 300 
NoConn ~ 5800 300 
NoConn ~ 5900 300 
NoConn ~ 6000 300 
NoConn ~ 5500 1300
NoConn ~ 5700 1300
NoConn ~ 5800 1300
Wire Wire Line
	5400 200  5500 200 
Connection ~ 5500 200 
Text GLabel 1300 1050 0    50   Input ~ 0
running
Wire Wire Line
	1300 1050 1400 1050
Connection ~ 1400 1050
Wire Wire Line
	1400 1050 1500 1050
$Comp
L 74xx:74LS08 U6
U 1 1 5FCA2337
P 4600 400
F 0 "U6" V 4554 588 50  0000 L CNN
F 1 "74LS08" V 4645 588 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4600 400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4600 400 50  0001 C CNN
	1    4600 400 
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 200  4450 200 
Wire Wire Line
	4450 200  4450 100 
Wire Wire Line
	4450 100  4500 100 
Wire Wire Line
	5200 300  5100 300 
Wire Wire Line
	5100 300  5100 350 
Wire Wire Line
	5100 350  4850 350 
Wire Wire Line
	4850 350  4850 700 
Wire Wire Line
	4850 700  4600 700 
Wire Wire Line
	4700 50   4700 100 
$Comp
L 74xx:74LS08 U6
U 5 1 5FCB63C1
P 2000 7700
F 0 "U6" H 2230 7746 50  0000 L CNN
F 1 "74LS08" H 2230 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2000 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2000 7700 50  0001 C CNN
	5    2000 7700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5FCB896D
P 7450 200
F 0 "J4" V 7296 348 50  0000 L CNN
F 1 "Conn_01x04_Female" V 7387 348 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 7450 200 50  0001 C CNN
F 3 "~" H 7450 200 50  0001 C CNN
	1    7450 200 
	0    1    -1   0   
$EndComp
Text Label 7700 100  0    50   ~ 0
comparator_inputs
Text Label 7900 200  0    50   ~ 0
eq_noteq_lt_ge
$Comp
L 74xx:74LS253 U24
U 1 1 5FD09533
P 7650 1250
F 0 "U24" V 7604 2294 50  0000 L CNN
F 1 "74LS253" V 7695 2294 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7650 1250 50  0001 C CNN
F 3 "" H 7650 1250 50  0001 C CNN
	1    7650 1250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FD6E3B3
P 7050 600
F 0 "#PWR0102" H 7050 350 50  0001 C CNN
F 1 "GND" H 7055 427 50  0000 C CNN
F 2 "" H 7050 600 50  0001 C CNN
F 3 "" H 7050 600 50  0001 C CNN
	1    7050 600 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 750  7150 500 
Wire Wire Line
	7150 500  7050 500 
Wire Wire Line
	7050 500  7050 600 
Wire Wire Line
	4150 2550 6500 2550
Wire Wire Line
	6500 2550 6500 750 
Wire Wire Line
	6500 750  6850 750 
Connection ~ 4150 2550
Wire Wire Line
	4050 2500 6450 2500
Wire Wire Line
	6450 2500 6450 700 
Wire Wire Line
	6450 700  6950 700 
Wire Wire Line
	6950 700  6950 750 
Connection ~ 4050 2500
Wire Wire Line
	7450 400  7450 500 
Wire Wire Line
	7450 500  7650 500 
Wire Wire Line
	7650 500  7650 750 
Wire Wire Line
	7550 400  7550 750 
Wire Wire Line
	7350 400  7350 750 
Wire Wire Line
	7250 400  7250 550 
Wire Wire Line
	7250 550  7450 550 
Wire Wire Line
	7450 550  7450 750 
Text GLabel 7650 1850 3    50   Output ~ 0
doskip
Wire Wire Line
	7650 1850 7650 1750
NoConn ~ 7850 750 
NoConn ~ 8050 750 
NoConn ~ 8150 750 
NoConn ~ 8250 750 
NoConn ~ 8350 750 
NoConn ~ 8350 1750
Text GLabel 9900 150  0    50   Input ~ 0
cycle_fe
Text GLabel 9900 250  0    50   Input ~ 0
cycle_de
Text GLabel 9900 350  0    50   Input ~ 0
cycle_ex
Text GLabel 9900 450  0    50   Input ~ 0
cycle_3
Text GLabel 9900 2850 0    50   Input ~ 0
doskip
Text GLabel 9900 550  0    50   Input ~ 0
op_nop
Text GLabel 9900 650  0    50   Input ~ 0
op_halt
Text GLabel 9900 750  0    50   Input ~ 0
op_page
Text GLabel 9900 850  0    50   Input ~ 0
op_sub
Text GLabel 9900 950  0    50   Input ~ 0
op_load
Text GLabel 9900 1050 0    50   Input ~ 0
op_store
Text GLabel 9900 1150 0    50   Input ~ 0
op_skip
Text GLabel 9900 1250 0    50   Input ~ 0
op_jalr
Text GLabel 9900 1350 0    50   Input ~ 0
op_nand
Text GLabel 9900 1450 0    50   Input ~ 0
op_add
Text GLabel 9900 1550 0    50   Input ~ 0
op_inc
Text GLabel 9900 1650 0    50   Input ~ 0
op_dec
Text GLabel 9900 1750 0    50   Input ~ 0
op_out
Text GLabel 9900 1850 0    50   Input ~ 0
op_in
Text GLabel 9900 1950 0    50   Input ~ 0
op_jmpfar
Text GLabel 9900 2050 0    50   Input ~ 0
op_push
Text GLabel 9900 2150 0    50   Input ~ 0
op_pop
Text GLabel 9900 2250 0    50   Input ~ 0
op_stackpage
Text GLabel 9900 2350 0    50   Input ~ 0
op_sli
Text GLabel 9900 2650 0    50   Input ~ 0
running
Text GLabel 9900 2550 0    50   Input ~ 0
halted
Text GLabel 9900 2750 0    50   Input ~ 0
fpcontrol
$Comp
L power:GND #PWR0103
U 1 1 5FDD8961
P 6550 1350
F 0 "#PWR0103" H 6550 1100 50  0001 C CNN
F 1 "GND" H 6555 1177 50  0000 C CNN
F 2 "" H 6550 1350 50  0001 C CNN
F 3 "" H 6550 1350 50  0001 C CNN
	1    6550 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FDD8ED7
P 4700 900
F 0 "#PWR0104" H 4700 650 50  0001 C CNN
F 1 "GND" H 4705 727 50  0000 C CNN
F 2 "" H 4700 900 50  0001 C CNN
F 3 "" H 4700 900 50  0001 C CNN
	1    4700 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FDD9448
P 200 1650
F 0 "#PWR0105" H 200 1400 50  0001 C CNN
F 1 "GND" H 205 1477 50  0000 C CNN
F 2 "" H 200 1650 50  0001 C CNN
F 3 "" H 200 1650 50  0001 C CNN
	1    200  1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 900  4700 800 
Wire Wire Line
	200  1650 200  1550
Wire Wire Line
	6550 1350 6550 1250
$Comp
L Connector:Conn_01x04_Female J10
U 1 1 6007072A
P 11600 5500
F 0 "J10" H 11628 5476 50  0000 L CNN
F 1 "Conn_01x04_Female" H 11628 5385 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 11600 5500 50  0001 C CNN
F 3 "~" H 11600 5500 50  0001 C CNN
	1    11600 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J9
U 1 1 600715F0
P 11600 5150
F 0 "J9" H 11628 5176 50  0000 L CNN
F 1 "Conn_01x03_Female" H 11628 5085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 11600 5150 50  0001 C CNN
F 3 "~" H 11600 5150 50  0001 C CNN
	1    11600 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J8
U 1 1 600724ED
P 11600 4600
F 0 "J8" H 11628 4576 50  0000 L CNN
F 1 "Conn_01x06_Female" H 11628 4485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 11600 4600 50  0001 C CNN
F 3 "~" H 11600 4600 50  0001 C CNN
	1    11600 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Female J7
U 1 1 600736D4
P 11600 3900
F 0 "J7" H 11628 3926 50  0000 L CNN
F 1 "Conn_01x07_Female" H 11628 3835 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 11600 3900 50  0001 C CNN
F 3 "~" H 11600 3900 50  0001 C CNN
	1    11600 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J6
U 1 1 6007469B
P 11600 3250
F 0 "J6" H 11628 3276 50  0000 L CNN
F 1 "Conn_01x05_Female" H 11628 3185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 11600 3250 50  0001 C CNN
F 3 "~" H 11600 3250 50  0001 C CNN
	1    11600 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 60074D80
P 11600 2800
F 0 "J5" H 11628 2826 50  0000 L CNN
F 1 "Conn_01x03_Female" H 11628 2735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 11600 2800 50  0001 C CNN
F 3 "~" H 11600 2800 50  0001 C CNN
	1    11600 2800
	1    0    0    -1  
$EndComp
Text GLabel 11250 2700 0    50   Input ~ 0
regclk
Text GLabel 11250 2800 0    50   Input ~ 0
rdrsclk
Text GLabel 11250 2900 0    50   Input ~ 0
rdwb
Text GLabel 11250 3050 0    50   Input ~ 0
addsub
Text GLabel 11250 3150 0    50   Input ~ 0
incdec
Text GLabel 11250 3250 0    50   Input ~ 0
addwb
Text GLabel 11250 3350 0    50   Input ~ 0
nandwb
Text GLabel 11250 3450 0    50   Input ~ 0
sliwb
Text GLabel 11250 3600 0    50   Input ~ 0
reset
Text GLabel 11250 3700 0    50   Input ~ 0
PCaddr
Text GLabel 11250 3800 0    50   Input ~ 0
Rrsaddr
Text GLabel 11250 3900 0    50   Input ~ 0
SPaddr
Text GLabel 11250 4000 0    50   Input ~ 0
PCload
Text GLabel 11250 4100 0    50   Input ~ 0
PCwb
Text GLabel 11250 4200 0    50   Input ~ 0
pushpop
Text GLabel 11250 4400 0    50   Input ~ 0
PCclk
Text GLabel 11250 4500 0    50   Input ~ 0
SPclk
Text GLabel 11250 4600 0    50   Input ~ 0
IRclk
Text GLabel 11250 4700 0    50   Input ~ 0
ipageclk
Text GLabel 11250 4800 0    50   Input ~ 0
dpageclk
Text GLabel 11250 4900 0    50   Input ~ 0
spageclk
Text GLabel 11250 5050 0    50   Input ~ 0
memrd
Text GLabel 11250 5150 0    50   Input ~ 0
memwr
Text GLabel 11250 5250 0    50   Input ~ 0
reset
Text GLabel 11250 5400 0    50   Input ~ 0
inwb
Text GLabel 11250 5500 0    50   Input ~ 0
inclr
Text GLabel 11250 5600 0    50   Input ~ 0
outwb
Text GLabel 11250 5700 0    50   Input ~ 0
out3
Wire Wire Line
	11250 2700 11400 2700
Wire Wire Line
	11250 2800 11400 2800
Wire Wire Line
	11250 2900 11400 2900
Wire Wire Line
	11250 3050 11400 3050
Wire Wire Line
	11250 3150 11400 3150
Wire Wire Line
	11250 3250 11400 3250
Wire Wire Line
	11250 3350 11400 3350
Wire Wire Line
	11250 3450 11400 3450
Wire Wire Line
	11250 3600 11400 3600
Wire Wire Line
	11250 3700 11400 3700
Wire Wire Line
	11250 3800 11400 3800
Wire Wire Line
	11250 3900 11400 3900
Wire Wire Line
	11250 4000 11400 4000
Wire Wire Line
	11250 4100 11400 4100
Wire Wire Line
	11250 4200 11400 4200
Wire Wire Line
	11250 4400 11400 4400
Wire Wire Line
	11250 4500 11400 4500
Wire Wire Line
	11250 4600 11400 4600
Wire Wire Line
	11250 4700 11400 4700
Wire Wire Line
	11250 4800 11400 4800
Wire Wire Line
	11250 4900 11400 4900
Wire Wire Line
	11250 5050 11400 5050
Wire Wire Line
	11250 5150 11400 5150
Wire Wire Line
	11250 5250 11400 5250
Wire Wire Line
	11250 5400 11400 5400
Wire Wire Line
	11250 5500 11400 5500
Wire Wire Line
	11250 5600 11400 5600
Wire Wire Line
	11250 5700 11400 5700
Text Label 10300 2750 0    50   ~ 0
riscy_registers
Text Label 10500 3250 0    50   ~ 0
riscy_alu
Text Label 10350 3900 0    50   ~ 0
riscy_ir_pc_sp
Text Label 10350 4700 0    50   ~ 0
riscy_ir_pc_sp
Text Label 10250 5200 0    50   ~ 0
riscy_memory_fp
Text Label 10550 5600 0    50   ~ 0
riscy_io
$Comp
L 74xx:74LS00 U10
U 1 2 60120F8C
P 3050 6350
F 0 "U10" H 3050 6675 50  0000 C CNN
F 1 "74LS00" H 3050 6584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3050 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3050 6350 50  0001 C CNN
	1    3050 6350
	1    0    0    -1  
$EndComp
Text GLabel 2700 6250 0    50   Input ~ 0
cycle_fe
$Comp
L 74xx:74LS08 U9
U 3 2 60139C77
P 2200 6450
F 0 "U9" H 2200 6775 50  0000 C CNN
F 1 "74LS08" H 2200 6684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2200 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2200 6450 50  0001 C CNN
	3    2200 6450
	1    0    0    -1  
$EndComp
Text Label 3000 6400 0    50   ~ 0
A1
Text Label 2050 6450 0    50   ~ 0
D3
$Comp
L 74xx:74LS08 U9
U 4 2 6013DCB0
P 1550 6550
F 0 "U9" H 1550 6875 50  0000 C CNN
F 1 "74LS08" H 1550 6784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1550 6550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1550 6550 50  0001 C CNN
	4    1550 6550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U7
U 4 2 60141EA8
P 850 6800
F 0 "U7" H 850 7125 50  0000 C CNN
F 1 "74LS32" H 850 7034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 850 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 850 6800 50  0001 C CNN
	4    850  6800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U7
U 2 2 60144AE8
P 1650 6000
F 0 "U7" H 1650 6325 50  0000 C CNN
F 1 "74LS32" H 1650 6234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1650 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1650 6000 50  0001 C CNN
	2    1650 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U7
U 3 2 60146DBA
P 850 6450
F 0 "U7" H 850 6775 50  0000 C CNN
F 1 "74LS32" H 850 6684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 850 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 850 6450 50  0001 C CNN
	3    850  6450
	1    0    0    -1  
$EndComp
Text Label 1600 6000 0    50   ~ 0
B2
Text Label 800  6450 0    50   ~ 0
B3
Text Label 800  6800 0    50   ~ 0
B4
Wire Wire Line
	2500 6450 2750 6450
Wire Wire Line
	2700 6250 2750 6250
Wire Wire Line
	1950 6000 1950 6200
Wire Wire Line
	1950 6200 1800 6200
Wire Wire Line
	1800 6200 1800 6350
Wire Wire Line
	1800 6350 1900 6350
Wire Wire Line
	1850 6550 1900 6550
Text Label 1500 6550 0    50   ~ 0
D4
Wire Wire Line
	1150 6450 1250 6450
Wire Wire Line
	1150 6800 1150 6650
Wire Wire Line
	1150 6650 1250 6650
Text GLabel 400  6350 0    50   Input ~ 0
cycle_ex
Text GLabel 400  6700 0    50   Input ~ 0
cycle_ex
Text GLabel 1200 5900 0    50   Input ~ 0
cycle_ex
Wire Wire Line
	1200 5900 1350 5900
Wire Wire Line
	400  6350 550  6350
Wire Wire Line
	400  6700 550  6700
$Comp
L 74xx:74LS32 U7
U 1 2 601B6AEB
P 950 5550
F 0 "U7" H 950 5875 50  0000 C CNN
F 1 "74LS32" H 950 5784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 950 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 950 5550 50  0001 C CNN
	1    950  5550
	1    0    0    -1  
$EndComp
Text Label 900  5550 0    50   ~ 0
B1
Wire Wire Line
	1250 5550 1250 6100
Wire Wire Line
	1250 6100 1350 6100
Text GLabel 500  5450 0    50   Input ~ 0
doskip
Text GLabel 500  5650 0    50   Input ~ 0
op_skip
Wire Wire Line
	500  5450 650  5450
Wire Wire Line
	500  5650 650  5650
Text GLabel 400  6900 0    50   Input ~ 0
op_jalr
Wire Wire Line
	400  6900 550  6900
Text GLabel 400  6550 0    50   Input ~ 0
op_jmpfar
Wire Wire Line
	400  6550 550  6550
$Comp
L 74xx:74LS32 U7
U 5 1 60201B07
P 2600 7700
F 0 "U7" H 2830 7746 50  0000 L CNN
F 1 "74LS32" H 2830 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2600 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2600 7700 50  0001 C CNN
	5    2600 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U8
U 5 1 6020372B
P 3200 7700
F 0 "U8" H 3430 7746 50  0000 L CNN
F 1 "74LS32" H 3430 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3200 7700 50  0001 C CNN
	5    3200 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U9
U 5 1 60205FF2
P 3850 7700
F 0 "U9" H 4080 7746 50  0000 L CNN
F 1 "74LS08" H 4080 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3850 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3850 7700 50  0001 C CNN
	5    3850 7700
	1    0    0    -1  
$EndComp
Text Label 3850 7700 0    50   ~ 0
D
Text Label 3200 7700 0    50   ~ 0
C
Text Label 2650 7700 0    50   ~ 0
B
Text GLabel 1950 6800 2    50   Output ~ 0
PCload
Wire Wire Line
	1950 6800 1900 6800
Wire Wire Line
	1900 6800 1900 6550
Connection ~ 1900 6550
$Comp
L 74xx:74LS00 U10
U 3 2 602171C5
P 950 4800
F 0 "U10" H 950 5125 50  0000 C CNN
F 1 "74LS00" H 950 5034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 950 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 950 4800 50  0001 C CNN
	3    950  4800
	1    0    0    -1  
$EndComp
Text GLabel 1300 4800 2    50   Output ~ 0
incdec
$Comp
L 74xx:74LS00 U10
U 4 2 6021B6B2
P 2250 4800
F 0 "U10" H 2250 5125 50  0000 C CNN
F 1 "74LS00" H 2250 5034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2250 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 2250 4800 50  0001 C CNN
	4    2250 4800
	1    0    0    -1  
$EndComp
Text GLabel 2700 4850 2    50   Output ~ 0
addsub
Wire Wire Line
	2700 4850 2650 4850
Wire Wire Line
	2650 4850 2650 4800
Wire Wire Line
	2650 4800 2550 4800
Text GLabel 1900 4700 0    50   Input ~ 0
op_sub
Text GLabel 1900 4900 0    50   Input ~ 0
op_inc
Wire Wire Line
	1900 4700 1950 4700
Wire Wire Line
	1900 4900 1950 4900
Wire Wire Line
	1250 4800 1300 4800
Text GLabel 550  4700 0    50   Input ~ 0
op_inc
Text GLabel 550  4900 0    50   Input ~ 0
op_dec
Wire Wire Line
	550  4700 650  4700
Wire Wire Line
	550  4900 650  4900
Text Label 2200 4800 0    50   ~ 0
A4
Text Label 900  4800 0    50   ~ 0
A3
$Comp
L 74xx:74LS00 U10
U 5 1 60265EA0
P 4500 7700
F 0 "U10" H 4730 7746 50  0000 L CNN
F 1 "74LS00" H 4730 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4500 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 4500 7700 50  0001 C CNN
	5    4500 7700
	1    0    0    -1  
$EndComp
Text Label 4500 7700 0    50   ~ 0
A
Text GLabel 2400 5100 0    50   Input ~ 0
cycle_de
Wire Wire Line
	2400 5100 2650 5100
$Comp
L 74xx:74LS08 U11
U 1 2 602760E8
P 4050 4900
F 0 "U11" H 4050 5225 50  0000 C CNN
F 1 "74LS08" H 4050 5134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4050 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4050 4900 50  0001 C CNN
	1    4050 4900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U11
U 2 2 602783DE
P 4750 5000
F 0 "U11" H 4750 5325 50  0000 C CNN
F 1 "74LS08" H 4750 5234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4750 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4750 5000 50  0001 C CNN
	2    4750 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U11
U 3 2 6027A968
P 5450 5100
F 0 "U11" H 5450 5425 50  0000 C CNN
F 1 "74LS08" H 5450 5334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5450 5100 50  0001 C CNN
	3    5450 5100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U11
U 4 2 6027CEE3
P 6150 5200
F 0 "U11" H 6150 5525 50  0000 C CNN
F 1 "74LS08" H 6150 5434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6150 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6150 5200 50  0001 C CNN
	4    6150 5200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U12
U 1 2 6027F2C4
P 6850 5300
F 0 "U12" H 6850 5625 50  0000 C CNN
F 1 "74LS08" H 6850 5534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6850 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6850 5300 50  0001 C CNN
	1    6850 5300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U12
U 2 2 60281E1B
P 4000 5700
F 0 "U12" H 4000 6025 50  0000 C CNN
F 1 "74LS08" H 4000 5934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4000 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4000 5700 50  0001 C CNN
	2    4000 5700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U12
U 3 2 6028449F
P 4700 5800
F 0 "U12" H 4700 6125 50  0000 C CNN
F 1 "74LS08" H 4700 6034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4700 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4700 5800 50  0001 C CNN
	3    4700 5800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U12
U 4 2 6028718B
P 5400 5900
F 0 "U12" H 5400 6225 50  0000 C CNN
F 1 "74LS08" H 5400 6134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5400 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5400 5900 50  0001 C CNN
	4    5400 5900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U20
U 1 2 602894C7
P 6100 6000
F 0 "U20" H 6100 6325 50  0000 C CNN
F 1 "74LS08" H 6100 6234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6100 6000 50  0001 C CNN
	1    6100 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U17
U 1 2 60291B55
P 6550 6500
F 0 "U17" H 6550 6825 50  0000 C CNN
F 1 "74LS32" H 6550 6734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6550 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6550 6500 50  0001 C CNN
	1    6550 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U16
U 3 2 602C5349
P 5750 6950
F 0 "U16" H 5750 7275 50  0000 C CNN
F 1 "74LS08" H 5750 7184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5750 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5750 6950 50  0001 C CNN
	3    5750 6950
	1    0    0    -1  
$EndComp
Text Label 6600 6500 2    50   ~ 0
K1
Text Label 5750 6950 2    50   ~ 0
J3
$Comp
L 74xx:74LS08 U23
U 4 2 602CAC48
P 5800 6400
F 0 "U23" H 5800 6725 50  0000 C CNN
F 1 "74LS08" H 5800 6634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5800 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5800 6400 50  0001 C CNN
	4    5800 6400
	1    0    0    -1  
$EndComp
Text Label 4050 4950 2    50   ~ 0
E1
Text Label 4750 5000 2    50   ~ 0
E2
Text Label 5450 5100 2    50   ~ 0
E3
Text Label 6150 5200 2    50   ~ 0
E4
Text Label 6850 5300 2    50   ~ 0
F1
Text Label 4000 5700 2    50   ~ 0
F2
Text Label 4700 5800 2    50   ~ 0
F3
Text Label 5400 5900 2    50   ~ 0
F4
Text Label 6100 6050 2    50   ~ 0
N1
Text Label 6900 6100 2    50   ~ 0
Q3
$Comp
L 74xx:74LS32 U14
U 4 2 6031ED46
P 7600 6000
F 0 "U14" H 7600 6325 50  0000 C CNN
F 1 "74LS32" H 7600 6234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7600 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7600 6000 50  0001 C CNN
	4    7600 6000
	1    0    0    -1  
$EndComp
Text Label 7650 6000 2    50   ~ 0
H4
Wire Wire Line
	4350 4900 4450 4900
Wire Wire Line
	5050 5000 5150 5000
Wire Wire Line
	5750 5100 5800 5100
Wire Wire Line
	6450 5200 6550 5200
Wire Wire Line
	7150 5300 7150 5500
Wire Wire Line
	7150 5500 3700 5500
Wire Wire Line
	3700 5500 3700 5600
Wire Wire Line
	4300 5700 4400 5700
Wire Wire Line
	5000 5800 5100 5800
Wire Wire Line
	5700 5900 5800 5900
Wire Wire Line
	6400 6000 6600 6000
Wire Wire Line
	7200 6100 7300 6100
Text GLabel 8000 6000 2    50   Output ~ 0
regclk
Wire Wire Line
	7900 6000 8000 6000
Text GLabel 3650 4800 0    50   Input ~ 0
op_add
Text GLabel 3650 5000 0    50   Input ~ 0
op_sub
Text GLabel 4350 5100 0    50   Input ~ 0
op_inc
Text GLabel 5050 5200 0    50   Input ~ 0
op_dec
Text GLabel 5750 5300 0    50   Input ~ 0
op_jmpfar
Text GLabel 6450 5400 0    50   Input ~ 0
op_jalr
Text GLabel 3550 5800 0    50   Input ~ 0
op_sli
Text GLabel 4350 5900 0    50   Input ~ 0
op_load
Text GLabel 5000 6000 0    50   Input ~ 0
op_nand
Text GLabel 6500 6200 0    50   Input ~ 0
op_pop
Text GLabel 7250 5900 0    50   Input ~ 0
cycle_ex
Wire Wire Line
	3650 4800 3750 4800
Wire Wire Line
	3650 5000 3750 5000
Wire Wire Line
	4350 5100 4450 5100
Wire Wire Line
	5050 5200 5150 5200
Wire Wire Line
	5750 5300 5850 5300
Wire Wire Line
	6450 5400 6550 5400
Wire Wire Line
	3550 5800 3700 5800
Wire Wire Line
	4350 5900 4400 5900
Wire Wire Line
	5000 6000 5100 6000
Wire Wire Line
	6500 6200 6600 6200
Wire Wire Line
	7250 5900 7300 5900
$Comp
L 74xx:74LS08 U11
U 5 1 6046A6F1
P 5200 7700
F 0 "U11" H 5430 7746 50  0000 L CNN
F 1 "74LS08" H 5430 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5200 7700 50  0001 C CNN
	5    5200 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U12
U 5 1 6046CC8B
P 5850 7700
F 0 "U12" H 6080 7746 50  0000 L CNN
F 1 "74LS08" H 6080 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5850 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5850 7700 50  0001 C CNN
	5    5850 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U13
U 5 1 6046F23C
P 6500 7700
F 0 "U13" H 6730 7746 50  0000 L CNN
F 1 "74LS00" H 6730 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6500 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6500 7700 50  0001 C CNN
	5    6500 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U14
U 5 1 60472177
P 7150 7700
F 0 "U14" H 7380 7746 50  0000 L CNN
F 1 "74LS32" H 7380 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7150 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7150 7700 50  0001 C CNN
	5    7150 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U15
U 5 1 6047452E
P 7800 7700
F 0 "U15" H 8030 7746 50  0000 L CNN
F 1 "74LS32" H 8030 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7800 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7800 7700 50  0001 C CNN
	5    7800 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U16
U 5 1 60477188
P 8450 7700
F 0 "U16" H 8680 7746 50  0000 L CNN
F 1 "74LS08" H 8680 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8450 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 8450 7700 50  0001 C CNN
	5    8450 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U17
U 5 1 6047A046
P 9150 7700
F 0 "U17" H 9380 7746 50  0000 L CNN
F 1 "74LS32" H 9380 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9150 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9150 7700 50  0001 C CNN
	5    9150 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U18
U 5 1 6048ADDB
P 9850 7700
F 0 "U18" H 10080 7746 50  0000 L CNN
F 1 "74LS00" H 10080 7655 50  0000 L CNN
F 2 "" H 9850 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9850 7700 50  0001 C CNN
	5    9850 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U19
U 5 1 6048D76C
P 10500 7700
F 0 "U19" H 10730 7746 50  0000 L CNN
F 1 "74LS32" H 10730 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10500 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10500 7700 50  0001 C CNN
	5    10500 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U20
U 5 1 604906CB
P 11150 7700
F 0 "U20" H 11380 7746 50  0000 L CNN
F 1 "74LS08" H 11380 7655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 11150 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 11150 7700 50  0001 C CNN
	5    11150 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U21
U 5 1 60493824
P 9850 6500
F 0 "U21" H 10080 6546 50  0000 L CNN
F 1 "74LS32" H 10080 6455 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9850 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9850 6500 50  0001 C CNN
	5    9850 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U22
U 5 1 604B99B7
P 10500 6500
F 0 "U22" H 10730 6546 50  0000 L CNN
F 1 "74LS32" H 10730 6455 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10500 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10500 6500 50  0001 C CNN
	5    10500 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U23
U 5 1 604BE80A
P 11150 6500
F 0 "U23" H 11380 6546 50  0000 L CNN
F 1 "74LS08" H 11380 6455 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 11150 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 11150 6500 50  0001 C CNN
	5    11150 6500
	1    0    0    -1  
$EndComp
Text Label 5150 7700 0    50   ~ 0
E
Text Label 5850 7700 0    50   ~ 0
F
Text Label 6500 7700 0    50   ~ 0
G
Text Label 7150 7700 0    50   ~ 0
H
Text Label 7800 7700 0    50   ~ 0
I
Text Label 8450 7700 0    50   ~ 0
J
Text Label 9150 7700 0    50   ~ 0
K
Text Label 9850 7700 0    50   ~ 0
L
Text Label 10500 7700 0    50   ~ 0
M
Text Label 11100 7700 0    50   ~ 0
N
Text Label 9850 6500 0    50   ~ 0
O
Text Label 10500 6500 0    50   ~ 0
P
Text Label 11150 6500 0    50   ~ 0
Q
Text GLabel 7000 6500 2    50   Output ~ 0
rdwb
Text Label 5800 6400 2    50   ~ 0
Q4
Wire Wire Line
	6050 6950 6200 6950
Wire Wire Line
	6250 6950 6250 6600
Wire Wire Line
	6100 6400 6250 6400
Text GLabel 5250 6850 0    50   Input ~ 0
cycle_ex
Text GLabel 5250 7050 0    50   Input ~ 0
cycle_3
Wire Wire Line
	5250 6850 5450 6850
Wire Wire Line
	5250 7050 5450 7050
Text GLabel 5400 6500 0    50   Input ~ 0
op_stackpage
Wire Wire Line
	5400 6500 5500 6500
$Comp
L 74xx:74LS08 U16
U 1 2 6054D759
P 4050 6900
F 0 "U16" H 4050 7225 50  0000 C CNN
F 1 "74LS08" H 4050 7134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4050 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4050 6900 50  0001 C CNN
	1    4050 6900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U16
U 2 2 6055265E
P 4600 6600
F 0 "U16" H 4600 6925 50  0000 C CNN
F 1 "74LS08" H 4600 6834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4600 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4600 6600 50  0001 C CNN
	2    4600 6600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U23
U 3 2 602F3DAB
P 6900 6100
F 0 "U23" H 6900 6425 50  0000 C CNN
F 1 "74LS08" H 6900 6334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6900 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6900 6100 50  0001 C CNN
	3    6900 6100
	1    0    0    -1  
$EndComp
Text GLabel 5600 6100 0    50   Input ~ 0
op_in
Wire Wire Line
	5600 6100 5800 6100
Text GLabel 3550 6350 2    50   Output ~ 0
PCclk
Wire Wire Line
	3350 6350 3550 6350
Wire Wire Line
	4350 6900 4350 6800
Wire Wire Line
	4350 6800 4300 6800
Wire Wire Line
	4300 6800 4300 6700
Wire Wire Line
	4900 6600 4900 6300
Wire Wire Line
	4900 6300 5500 6300
Text Label 4600 6600 2    50   ~ 0
J2
Text Label 4000 6900 2    50   ~ 0
J1
Text GLabel 4200 6500 0    50   Input ~ 0
op_page
Text GLabel 3650 6800 0    50   Input ~ 0
op_out
Text GLabel 3650 7000 0    50   Input ~ 0
op_store
Wire Wire Line
	4200 6500 4300 6500
Wire Wire Line
	3650 6800 3750 6800
Wire Wire Line
	3650 7000 3750 7000
Text GLabel 1950 6950 2    50   Output ~ 0
PCwb
Wire Wire Line
	1950 6950 1900 6950
Wire Wire Line
	1900 6950 1900 6800
Connection ~ 1900 6800
$Comp
L 74xx:74LS32 U14
U 1 2 60643F9E
P 2500 5650
F 0 "U14" H 2500 5975 50  0000 C CNN
F 1 "74LS32" H 2500 5884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2500 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2500 5650 50  0001 C CNN
	1    2500 5650
	1    0    0    -1  
$EndComp
Text GLabel 2900 5650 2    50   Output ~ 0
sliwb
Wire Wire Line
	2900 5650 2800 5650
Text GLabel 2100 5550 0    50   Input ~ 0
op_sli
Text GLabel 2100 5750 0    50   Input ~ 0
cycle_ex
Wire Wire Line
	2100 5550 2200 5550
Wire Wire Line
	2100 5750 2200 5750
Text Label 2450 5650 0    50   ~ 0
H1
$Comp
L 74xx:74LS32 U8
U 4 2 606805B8
P 5800 4500
F 0 "U8" H 5800 4825 50  0000 C CNN
F 1 "74LS32" H 5800 4734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5800 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5800 4500 50  0001 C CNN
	4    5800 4500
	1    0    0    -1  
$EndComp
Text Label 5750 4450 0    50   ~ 0
C4
Wire Wire Line
	5800 5100 5800 4750
Wire Wire Line
	5800 4750 5500 4750
Wire Wire Line
	5500 4750 5500 4600
Connection ~ 5800 5100
Wire Wire Line
	5800 5100 5850 5100
Text GLabel 5300 4400 0    50   Input ~ 0
cycle_ex
Text GLabel 6250 4500 2    50   Output ~ 0
addwb
Wire Wire Line
	6100 4500 6250 4500
Wire Wire Line
	5300 4400 5500 4400
$Comp
L 74xx:74LS32 U15
U 1 2 606CEAEA
P 7150 4550
F 0 "U15" H 7150 4875 50  0000 C CNN
F 1 "74LS32" H 7150 4784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7150 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7150 4550 50  0001 C CNN
	1    7150 4550
	1    0    0    -1  
$EndComp
Text GLabel 7550 4550 2    50   Output ~ 0
nandwb
Text GLabel 6800 4350 0    50   Input ~ 0
cycle_ex
Text GLabel 6750 4750 0    50   Input ~ 0
op_nand
Wire Wire Line
	6800 4350 6850 4350
Wire Wire Line
	6850 4350 6850 4450
Wire Wire Line
	6750 4750 6850 4750
Wire Wire Line
	6850 4750 6850 4650
Text Label 7100 4550 0    50   ~ 0
I1
Wire Wire Line
	6850 6500 7000 6500
Text GLabel 2400 5250 0    50   Input ~ 0
cycle_fe
Text GLabel 2650 5100 2    50   Output ~ 0
rdrsclk
Text GLabel 2650 5250 2    50   Output ~ 0
IRclk
Wire Wire Line
	2400 5250 2650 5250
$Comp
L 74xx:74LS08 U20
U 3 2 5FBA09CB
P 7450 6850
F 0 "U20" H 7450 7175 50  0000 C CNN
F 1 "74LS08" H 7450 7084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7450 6850 50  0001 C CNN
	3    7450 6850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U9
U 1 2 5FBA44B4
P 8850 6650
F 0 "U9" H 8850 6975 50  0000 C CNN
F 1 "74LS08" H 8850 6884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8850 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 8850 6650 50  0001 C CNN
	1    8850 6650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U14
U 2 2 5FBA93C4
P 8150 6750
F 0 "U14" H 8150 7075 50  0000 C CNN
F 1 "74LS32" H 8150 6984 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8150 6750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8150 6750 50  0001 C CNN
	2    8150 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 6850 7850 6850
Wire Wire Line
	8450 6750 8550 6750
Text Label 8100 6750 0    50   ~ 0
H2
Text GLabel 9250 6650 2    50   Output ~ 0
memrd
Text GLabel 8550 6400 0    50   Input ~ 0
cycle_fe
Text Label 7400 6850 0    50   ~ 0
N3
Text Label 8800 6650 0    50   ~ 0
D1
Wire Wire Line
	8550 6400 8550 6550
Text GLabel 7850 6450 0    50   Input ~ 0
cycle_ex
Text GLabel 7050 6750 0    50   Input ~ 0
op_load
Text GLabel 7050 6950 0    50   Input ~ 0
op_pop
Wire Wire Line
	7050 6750 7150 6750
Wire Wire Line
	7050 6950 7150 6950
Wire Wire Line
	7850 6450 7850 6650
Wire Wire Line
	9150 6650 9250 6650
$Comp
L 74xx:74LS32 U14
U 3 2 5FC781E0
P 8850 6050
F 0 "U14" H 8850 6375 50  0000 C CNN
F 1 "74LS32" H 8850 6284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8850 6050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8850 6050 50  0001 C CNN
	3    8850 6050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U20
U 4 2 5FC7CB35
P 8250 5550
F 0 "U20" H 8250 5875 50  0000 C CNN
F 1 "74LS08" H 8250 5784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8250 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 8250 5550 50  0001 C CNN
	4    8250 5550
	1    0    0    -1  
$EndComp
Text GLabel 7850 5450 0    50   Input ~ 0
op_store
Text GLabel 7900 5650 0    50   Input ~ 0
op_push
Text GLabel 8450 6150 0    50   Input ~ 0
cycle_3
Text GLabel 9250 6050 2    50   Output ~ 0
memwr
Wire Wire Line
	8550 5550 8550 5950
Wire Wire Line
	8450 6150 8550 6150
Wire Wire Line
	9150 6050 9250 6050
Wire Wire Line
	7850 5450 7950 5450
Wire Wire Line
	7900 5650 7950 5650
Text Label 8250 5550 2    50   ~ 0
N4
Text Label 8900 6100 2    50   ~ 0
H3
$Comp
L 74xx:74LS32 U15
U 2 2 5FCED19D
P 1000 4250
F 0 "U15" H 1000 4575 50  0000 C CNN
F 1 "74LS32" H 1000 4484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1000 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1000 4250 50  0001 C CNN
	2    1000 4250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U15
U 4 2 5FCF1161
P 1000 3650
F 0 "U15" H 1000 3975 50  0000 C CNN
F 1 "74LS32" H 1000 3884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1000 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1000 3650 50  0001 C CNN
	4    1000 3650
	1    0    0    -1  
$EndComp
Text GLabel 1300 3650 2    50   Output ~ 0
ipageclk
Text GLabel 1300 4250 2    50   Output ~ 0
dpageclk
$Comp
L 74xx:74LS32 U22
U 2 2 5FCF8269
P 1000 3100
F 0 "U22" H 1000 3425 50  0000 C CNN
F 1 "74LS32" H 1000 3334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1000 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1000 3100 50  0001 C CNN
	2    1000 3100
	1    0    0    -1  
$EndComp
Text GLabel 1300 3100 2    50   Output ~ 0
spageclk
Text GLabel 600  3200 0    50   Input ~ 0
cycle_ex
Text GLabel 600  3750 0    50   Input ~ 0
cycle_ex
Text GLabel 600  4350 0    50   Input ~ 0
cycle_ex
Text GLabel 600  3000 0    50   Input ~ 0
op_stackpage
Text GLabel 600  3550 0    50   Input ~ 0
op_jmpfar
Text GLabel 600  4150 0    50   Input ~ 0
op_page
Wire Wire Line
	600  3000 700  3000
Wire Wire Line
	600  3200 700  3200
Wire Wire Line
	600  3550 700  3550
Wire Wire Line
	600  3750 700  3750
Wire Wire Line
	600  4150 700  4150
Wire Wire Line
	600  4350 700  4350
Text Label 950  3100 0    50   ~ 0
P2
Text Label 950  3650 0    50   ~ 0
I4
Text Label 950  4250 0    50   ~ 0
I2
$Comp
L 74xx:74LS32 U19
U 3 2 5FE0B800
P 2250 4250
F 0 "U19" H 2250 4575 50  0000 C CNN
F 1 "74LS32" H 2250 4484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2250 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2250 4250 50  0001 C CNN
	3    2250 4250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U19
U 2 2 5FE0F841
P 2250 3700
F 0 "U19" H 2250 4025 50  0000 C CNN
F 1 "74LS32" H 2250 3934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2250 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2250 3700 50  0001 C CNN
	2    2250 3700
	1    0    0    -1  
$EndComp
Text GLabel 1950 3500 0    50   Input ~ 0
op_in
Text GLabel 1950 4050 0    50   Input ~ 0
op_in
Text GLabel 1950 4450 0    50   Input ~ 0
cycle_3
Text GLabel 1950 3900 0    50   Input ~ 0
cycle_ex
Text GLabel 2550 3800 2    50   Output ~ 0
inwb
Text GLabel 3400 4350 2    50   Output ~ 0
inclr
Wire Wire Line
	1950 3500 1950 3600
Wire Wire Line
	1950 3800 1950 3900
Wire Wire Line
	1950 4050 1950 4150
Wire Wire Line
	1950 4450 1950 4350
Wire Wire Line
	3100 4300 3150 4300
Wire Wire Line
	2550 3700 2550 3800
Text Label 2300 3700 2    50   ~ 0
M2
Text Label 2250 4300 2    50   ~ 0
M3
$Comp
L 74xx:74LS32 U17
U 3 2 5FEAF00A
P 2250 3250
F 0 "U17" H 2250 3575 50  0000 C CNN
F 1 "74LS32" H 2250 3484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2250 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2250 3250 50  0001 C CNN
	3    2250 3250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U17
U 2 2 5FEB5408
P 2250 2800
F 0 "U17" H 2250 3125 50  0000 C CNN
F 1 "74LS32" H 2250 3034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2250 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2250 2800 50  0001 C CNN
	2    2250 2800
	1    0    0    -1  
$EndComp
Text GLabel 2600 2700 2    50   Output ~ 0
outwb
Text GLabel 3650 4100 2    50   Output ~ 0
out3
Text GLabel 1850 2700 0    50   Input ~ 0
op_out
Text GLabel 1850 3250 0    50   Input ~ 0
op_out
Text GLabel 1850 2900 0    50   Input ~ 0
cycle_ex
Text GLabel 1850 3350 0    50   Input ~ 0
cycle_3
Text Label 2200 2800 0    50   ~ 0
K2
Text Label 2200 3250 0    50   ~ 0
K3
Wire Wire Line
	1850 2700 1950 2700
Wire Wire Line
	1850 2900 1950 2900
Wire Wire Line
	1850 3250 1950 3250
Wire Wire Line
	1950 3250 1950 3150
Wire Wire Line
	1850 3350 1950 3350
Wire Wire Line
	2550 3250 2550 3600
$Comp
L 74xx:74LS00 U13
U 3 1 5FFAF89C
P 5300 2050
F 0 "U13" H 5300 2375 50  0000 C CNN
F 1 "74LS00" H 5300 2284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5300 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5300 2050 50  0001 C CNN
	3    5300 2050
	1    0    0    -1  
$EndComp
Text GLabel 4900 1950 0    50   Input ~ 0
fpcontrol
Text GLabel 5700 2050 2    50   Output ~ 0
not_fpcontrol
Wire Wire Line
	4900 1950 5000 1950
Wire Wire Line
	5000 1950 5000 2150
Connection ~ 5000 1950
$Comp
L 74xx:74LS139 U3
U 2 1 5FB38455
P 4100 1550
F 0 "U3" V 4054 1780 50  0000 L CNN
F 1 "74LS139" V 4145 1780 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4100 1550 50  0001 C CNN
F 3 "" H 4100 1550 50  0001 C CNN
	2    4100 1550
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS32 U22
U 1 2 6007AB7C
P 3250 350
F 0 "U22" V 3204 538 50  0000 L CNN
F 1 "74LS32" V 3295 538 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3250 350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3250 350 50  0001 C CNN
	1    3250 350 
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 350  3550 50  
Wire Wire Line
	3550 50   3350 50  
Text GLabel 3050 50   0    50   Input ~ 0
not_fpcontrol
Wire Wire Line
	3050 50   3150 50  
Wire Wire Line
	3250 650  3450 650 
Wire Wire Line
	3450 650  3450 900 
Wire Wire Line
	3450 900  3650 900 
Wire Wire Line
	3650 900  3650 950 
Wire Wire Line
	3650 950  3900 950 
Wire Wire Line
	3900 950  3900 1050
Text Label 5300 2050 0    50   ~ 0
G3
Text Label 3200 300  0    50   ~ 0
P1
Text GLabel 7250 4850 0    50   Input ~ 0
op_push
Text GLabel 7400 4850 2    50   Output ~ 0
pushpop
Wire Wire Line
	7250 4850 7400 4850
$Comp
L 74xx:74LS08 U20
U 2 2 6014F8D9
P 9000 4850
F 0 "U20" H 9000 5175 50  0000 C CNN
F 1 "74LS08" H 9000 5084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9000 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9000 4850 50  0001 C CNN
	2    9000 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U21
U 3 2 60153175
P 8400 5050
F 0 "U21" H 8400 5375 50  0000 C CNN
F 1 "74LS32" H 8400 5284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8400 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8400 5050 50  0001 C CNN
	3    8400 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U22
U 4 2 60157F26
P 8400 4450
F 0 "U22" H 8400 4775 50  0000 C CNN
F 1 "74LS32" H 8400 4684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8400 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8400 4450 50  0001 C CNN
	4    8400 4450
	1    0    0    -1  
$EndComp
Text GLabel 8000 4350 0    50   Input ~ 0
op_push
Text GLabel 8000 5250 0    50   Input ~ 0
op_pop
Text GLabel 8100 4700 0    50   Input ~ 0
cycle_de
Text GLabel 8050 5050 0    50   Input ~ 0
cycle_3
Text GLabel 9400 4850 2    50   Output ~ 0
SPclk
Wire Wire Line
	8000 4350 8100 4350
Wire Wire Line
	8100 4700 8100 4550
Wire Wire Line
	8050 5050 8100 5050
Wire Wire Line
	8100 5050 8100 4950
Wire Wire Line
	8000 5250 8100 5250
Wire Wire Line
	8100 5250 8100 5150
Wire Wire Line
	8700 5050 8700 4950
Wire Wire Line
	8700 4450 8700 4750
Wire Wire Line
	9300 4850 9400 4850
Text Label 9000 4850 2    50   ~ 0
N2
Text Label 8450 4450 2    50   ~ 0
P4
Text Label 8450 5050 2    50   ~ 0
O3
Text GLabel 6250 7100 2    50   Output ~ 0
cycle_ex_3
Wire Wire Line
	6250 7100 6200 7100
Wire Wire Line
	6200 7100 6200 6950
Connection ~ 6200 6950
Wire Wire Line
	6200 6950 6250 6950
$Comp
L 74xx:74LS32 U21
U 4 2 60271F1E
P 9350 5450
F 0 "U21" H 9350 5775 50  0000 C CNN
F 1 "74LS32" H 9350 5684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9350 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9350 5450 50  0001 C CNN
	4    9350 5450
	1    0    0    -1  
$EndComp
Text Label 9400 5450 2    50   ~ 0
O4
Text GLabel 8950 5350 0    50   Input ~ 0
cycle_ex_3
Text GLabel 8950 5550 0    50   Input ~ 0
op10
Text GLabel 9750 5450 2    50   Output ~ 0
SPaddr
Wire Wire Line
	8950 5350 9050 5350
Wire Wire Line
	8950 5550 9050 5550
Wire Wire Line
	9650 5450 9750 5450
$Comp
L 74xx:74LS32 U22
U 3 2 602F8C80
P 10100 5800
F 0 "U22" H 10100 6125 50  0000 C CNN
F 1 "74LS32" H 10100 6034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10100 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10100 5800 50  0001 C CNN
	3    10100 5800
	1    0    0    -1  
$EndComp
Text GLabel 10500 5800 2    50   Output ~ 0
PCaddr
Text GLabel 9700 5900 0    50   Input ~ 0
cycle_fe
Text GLabel 9700 5700 0    50   Input ~ 0
not_fpcontrol
Wire Wire Line
	9700 5700 9800 5700
Wire Wire Line
	9700 5900 9800 5900
Wire Wire Line
	10400 5800 10500 5800
Text Label 10050 5800 0    50   ~ 0
P3
Text GLabel 9800 4600 0    50   Input ~ 0
SPaddr
Text GLabel 9700 5050 0    50   Input ~ 0
cycle_fe
Text GLabel 10500 4550 2    50   Output ~ 0
Rrsaddr
Wire Wire Line
	9800 4600 9800 4850
Wire Wire Line
	9700 5050 9800 5050
Wire Wire Line
	2100 1150 2100 1000
Connection ~ 2100 1150
Wire Wire Line
	2100 1000 1700 1000
$Comp
L 74xx:74LS00 U18
U 3 1 603F6DC1
P 5450 3400
F 0 "U18" H 5450 3725 50  0000 C CNN
F 1 "74LS00" H 5450 3634 50  0000 C CNN
F 2 "" H 5450 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5450 3400 50  0001 C CNN
	3    5450 3400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U18
U 4 1 603FCC29
P 5450 3900
F 0 "U18" H 5450 4225 50  0000 C CNN
F 1 "74LS00" H 5450 4134 50  0000 C CNN
F 2 "" H 5450 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5450 3900 50  0001 C CNN
	4    5450 3900
	1    0    0    -1  
$EndComp
Text GLabel 5100 3300 0    50   Input ~ 0
op_halt
Text GLabel 5100 4000 0    50   Input ~ 0
reset
Wire Wire Line
	5100 4000 5150 4000
Wire Wire Line
	5100 3300 5150 3300
Wire Wire Line
	5750 3400 5750 3700
Wire Wire Line
	5750 3700 5150 3700
Wire Wire Line
	5150 3700 5150 3800
Wire Wire Line
	5150 3500 5150 3650
Wire Wire Line
	5150 3650 5800 3650
Wire Wire Line
	5800 3650 5800 3900
Wire Wire Line
	5800 3900 5750 3900
Text Label 5400 3400 0    50   ~ 0
L3
Text Label 5400 3900 0    50   ~ 0
L4
Text GLabel 5950 3900 2    50   Output ~ 0
halted
Text GLabel 5950 3400 2    50   Output ~ 0
running
Wire Wire Line
	5750 3400 5950 3400
Connection ~ 5750 3400
Wire Wire Line
	5800 3900 5950 3900
Connection ~ 5800 3900
Wire Wire Line
	3550 350  3800 350 
Wire Wire Line
	3800 350  3800 400 
Wire Wire Line
	3800 50   3800 350 
Wire Wire Line
	3800 50   4700 50  
Connection ~ 3800 350 
$Comp
L 74xx:74LS00 U4
U 3 2 6036987B
P 10100 4950
F 0 "U4" H 10100 5275 50  0000 C CNN
F 1 "74LS00" H 10100 5184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10100 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 10100 4950 50  0001 C CNN
	3    10100 4950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U21
U 1 2 6056702D
P 10300 4350
F 0 "U21" H 10300 4675 50  0000 C CNN
F 1 "74LS32" H 10300 4584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10300 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10300 4350 50  0001 C CNN
	1    10300 4350
	1    0    0    -1  
$EndComp
Text Label 10300 4350 2    50   ~ 0
O1
Wire Wire Line
	10500 4450 10600 4450
Wire Wire Line
	10600 4450 10600 4350
Wire Wire Line
	10400 4950 10400 4550
Wire Wire Line
	10400 4550 10000 4550
Wire Wire Line
	10000 4550 10000 4450
Text GLabel 9900 4250 0    50   Input ~ 0
not_fpcontrol
Wire Wire Line
	9900 4250 10000 4250
Wire Wire Line
	10500 4450 10500 4550
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5FB72070
P 8750 400
F 0 "J1" H 8778 426 50  0000 L CNN
F 1 "Conn_01x03_Female" H 8778 335 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8750 400 50  0001 C CNN
F 3 "~" H 8750 400 50  0001 C CNN
	1    8750 400 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 5FB756C0
P 9100 400
F 0 "J2" H 9128 426 50  0000 L CNN
F 1 "Conn_01x03_Female" H 9128 335 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9100 400 50  0001 C CNN
F 3 "~" H 9100 400 50  0001 C CNN
	1    9100 400 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FB7830E
P 8350 400
F 0 "#PWR0106" H 8350 150 50  0001 C CNN
F 1 "GND" H 8355 227 50  0000 C CNN
F 2 "" H 8350 400 50  0001 C CNN
F 3 "" H 8350 400 50  0001 C CNN
	1    8350 400 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5FB7AEEA
P 8350 300
F 0 "#PWR0107" H 8350 150 50  0001 C CNN
F 1 "+5V" H 8365 473 50  0000 C CNN
F 2 "" H 8350 300 50  0001 C CNN
F 3 "" H 8350 300 50  0001 C CNN
	1    8350 300 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FB7D8BC
P 8150 400
F 0 "#FLG0101" H 8150 475 50  0001 C CNN
F 1 "PWR_FLAG" H 8150 573 50  0000 C CNN
F 2 "" H 8150 400 50  0001 C CNN
F 3 "~" H 8150 400 50  0001 C CNN
	1    8150 400 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FB80266
P 8550 200
F 0 "#FLG0102" H 8550 275 50  0001 C CNN
F 1 "PWR_FLAG" H 8550 373 50  0000 C CNN
F 2 "" H 8550 200 50  0001 C CNN
F 3 "~" H 8550 200 50  0001 C CNN
	1    8550 200 
	1    0    0    -1  
$EndComp
Text GLabel 8550 650  0    50   Input ~ 0
CLK
Wire Wire Line
	8550 200  8550 300 
Wire Wire Line
	8350 300  8550 300 
Connection ~ 8550 300 
Wire Wire Line
	8550 400  8350 400 
Connection ~ 8350 400 
Wire Wire Line
	8350 400  8150 400 
Wire Wire Line
	8550 650  8550 500 
Wire Wire Line
	8550 500  8900 500 
Connection ~ 8550 500 
Wire Wire Line
	8900 400  8550 400 
Connection ~ 8550 400 
Wire Wire Line
	8900 300  8550 300 
$Comp
L power:+5V #PWR0108
U 1 1 5FC75E57
P 8750 1150
F 0 "#PWR0108" H 8750 1000 50  0001 C CNN
F 1 "+5V" H 8765 1323 50  0000 C CNN
F 2 "" H 8750 1150 50  0001 C CNN
F 3 "" H 8750 1150 50  0001 C CNN
	1    8750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FC78D70
P 8750 1550
F 0 "#PWR0109" H 8750 1300 50  0001 C CNN
F 1 "GND" H 8755 1377 50  0000 C CNN
F 2 "" H 8750 1550 50  0001 C CNN
F 3 "" H 8750 1550 50  0001 C CNN
	1    8750 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5FC7E273
P 8750 1350
F 0 "C24" H 8865 1396 50  0000 L CNN
F 1 "C" H 8865 1305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8788 1200 50  0001 C CNN
F 3 "~" H 8750 1350 50  0001 C CNN
	1    8750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1200 8750 1150
Wire Wire Line
	8750 1500 8750 1550
Wire Wire Line
	8650 1250 8650 1200
Wire Wire Line
	8650 1200 8750 1200
Connection ~ 8750 1200
$Comp
L power:+5V #PWR0110
U 1 1 5FCDFC7C
P 6300 1000
F 0 "#PWR0110" H 6300 850 50  0001 C CNN
F 1 "+5V" H 6315 1173 50  0000 C CNN
F 2 "" H 6300 1000 50  0001 C CNN
F 3 "" H 6300 1000 50  0001 C CNN
	1    6300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5FCDFC86
P 6300 1400
F 0 "#PWR0111" H 6300 1150 50  0001 C CNN
F 1 "GND" H 6305 1227 50  0000 C CNN
F 2 "" H 6300 1400 50  0001 C CNN
F 3 "" H 6300 1400 50  0001 C CNN
	1    6300 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FCDFC90
P 6300 1200
F 0 "C1" H 6415 1246 50  0000 L CNN
F 1 "C" H 6415 1155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6338 1050 50  0001 C CNN
F 3 "~" H 6300 1200 50  0001 C CNN
	1    6300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1050 6300 1000
Wire Wire Line
	6300 1350 6300 1400
Wire Wire Line
	6200 1050 6300 1050
Connection ~ 6300 1050
$Comp
L power:+5V #PWR0112
U 1 1 5FD0395E
P 2450 1500
F 0 "#PWR0112" H 2450 1350 50  0001 C CNN
F 1 "+5V" H 2465 1673 50  0000 C CNN
F 2 "" H 2450 1500 50  0001 C CNN
F 3 "" H 2450 1500 50  0001 C CNN
	1    2450 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5FD03968
P 2450 1900
F 0 "#PWR0113" H 2450 1650 50  0001 C CNN
F 1 "GND" H 2455 1727 50  0000 C CNN
F 2 "" H 2450 1900 50  0001 C CNN
F 3 "" H 2450 1900 50  0001 C CNN
	1    2450 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FD03972
P 2450 1700
F 0 "C2" H 2565 1746 50  0000 L CNN
F 1 "C" H 2565 1655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 2488 1550 50  0001 C CNN
F 3 "~" H 2450 1700 50  0001 C CNN
	1    2450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1550 2450 1500
Wire Wire Line
	2450 1850 2450 1900
Connection ~ 2450 1550
Wire Wire Line
	6200 1050 6200 900 
Wire Wire Line
	6200 900  6300 900 
Wire Wire Line
	6300 900  6300 800 
Wire Wire Line
	2300 1550 2450 1550
$Comp
L power:+5V #PWR0114
U 1 1 5FD6EB79
P 600 7150
F 0 "#PWR0114" H 600 7000 50  0001 C CNN
F 1 "+5V" H 615 7323 50  0000 C CNN
F 2 "" H 600 7150 50  0001 C CNN
F 3 "" H 600 7150 50  0001 C CNN
	1    600  7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5FD6EB83
P 600 7550
F 0 "#PWR0115" H 600 7300 50  0001 C CNN
F 1 "GND" H 605 7377 50  0000 C CNN
F 2 "" H 600 7550 50  0001 C CNN
F 3 "" H 600 7550 50  0001 C CNN
	1    600  7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FD6EB8D
P 600 7350
F 0 "C3" H 715 7396 50  0000 L CNN
F 1 "C" H 715 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 638 7200 50  0001 C CNN
F 3 "~" H 600 7350 50  0001 C CNN
	1    600  7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  7200 600  7150
Wire Wire Line
	600  7500 600  7550
Connection ~ 600  7200
Wire Wire Line
	300  8200 900  8200
Connection ~ 900  8200
Wire Wire Line
	900  8200 1200 8200
Connection ~ 1450 8200
Wire Wire Line
	1450 8200 2000 8200
Connection ~ 2000 8200
Wire Wire Line
	2000 8200 2600 8200
Connection ~ 2600 8200
Wire Wire Line
	2600 8200 3200 8200
Connection ~ 3200 8200
Wire Wire Line
	3200 8200 3850 8200
Connection ~ 3850 8200
Wire Wire Line
	3850 8200 4500 8200
Connection ~ 4500 8200
Wire Wire Line
	4500 8200 5200 8200
Connection ~ 5200 8200
Wire Wire Line
	5200 8200 5850 8200
Wire Wire Line
	300  7200 600  7200
Wire Wire Line
	600  7200 900  7200
Connection ~ 900  7200
Wire Wire Line
	900  7200 1200 7200
Connection ~ 1450 7200
Wire Wire Line
	1450 7200 2000 7200
Connection ~ 2000 7200
Wire Wire Line
	2000 7200 2600 7200
Connection ~ 2600 7200
Wire Wire Line
	2600 7200 3200 7200
Connection ~ 3200 7200
Wire Wire Line
	3200 7200 3850 7200
Connection ~ 3850 7200
Wire Wire Line
	3850 7200 4500 7200
Connection ~ 4500 7200
Wire Wire Line
	4500 7200 5200 7200
Connection ~ 5200 7200
Wire Wire Line
	5200 7200 5850 7200
Wire Wire Line
	5850 7200 6500 7200
Connection ~ 5850 7200
Connection ~ 6500 7200
Wire Wire Line
	6500 7200 7150 7200
Connection ~ 7150 7200
Wire Wire Line
	7150 7200 7800 7200
Connection ~ 7800 7200
Wire Wire Line
	7800 7200 8450 7200
Connection ~ 8450 7200
Wire Wire Line
	8450 7200 9150 7200
Connection ~ 9150 7200
Wire Wire Line
	9150 7200 9600 7200
Connection ~ 9850 7200
Wire Wire Line
	9850 7200 10500 7200
Connection ~ 10500 7200
Wire Wire Line
	10500 7200 11150 7200
Wire Wire Line
	5850 8200 6500 8200
Connection ~ 5850 8200
Connection ~ 6500 8200
Wire Wire Line
	6500 8200 7150 8200
Connection ~ 7150 8200
Wire Wire Line
	7150 8200 7800 8200
Connection ~ 7800 8200
Wire Wire Line
	7800 8200 8450 8200
Connection ~ 8450 8200
Wire Wire Line
	8450 8200 9150 8200
Connection ~ 9150 8200
Wire Wire Line
	9150 8200 9850 8200
Connection ~ 9850 8200
Wire Wire Line
	9850 8200 10500 8200
Connection ~ 10500 8200
Wire Wire Line
	10500 8200 11150 8200
Wire Wire Line
	9850 6000 9600 6000
Wire Wire Line
	9600 6000 9600 7200
Connection ~ 9600 7200
Wire Wire Line
	9600 7200 9850 7200
Wire Wire Line
	9850 6000 10500 6000
Connection ~ 9850 6000
Connection ~ 10500 6000
Wire Wire Line
	10500 6000 11150 6000
Wire Wire Line
	9850 7000 10500 7000
Connection ~ 10500 7000
Wire Wire Line
	10500 7000 11150 7000
Wire Wire Line
	11150 7000 11400 7000
Wire Wire Line
	11400 7000 11400 8200
Wire Wire Line
	11400 8200 11150 8200
Connection ~ 11150 7000
Connection ~ 11150 8200
$Comp
L Device:C C4
U 1 1 5FEFFB17
P 1200 8000
F 0 "C4" H 1315 8046 50  0000 L CNN
F 1 "C" H 1315 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1238 7850 50  0001 C CNN
F 3 "~" H 1200 8000 50  0001 C CNN
	1    1200 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5FF2D31C
P 1750 8000
F 0 "C5" H 1865 8046 50  0000 L CNN
F 1 "C" H 1865 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1788 7850 50  0001 C CNN
F 3 "~" H 1750 8000 50  0001 C CNN
	1    1750 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5FFB04E7
P 2300 8000
F 0 "C6" H 2415 8046 50  0000 L CNN
F 1 "C" H 2415 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 2338 7850 50  0001 C CNN
F 3 "~" H 2300 8000 50  0001 C CNN
	1    2300 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5FFB04F1
P 2900 8000
F 0 "C7" H 3015 8046 50  0000 L CNN
F 1 "C" H 3015 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 2938 7850 50  0001 C CNN
F 3 "~" H 2900 8000 50  0001 C CNN
	1    2900 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5FFDDA3A
P 3550 8000
F 0 "C8" H 3665 8046 50  0000 L CNN
F 1 "C" H 3665 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 3588 7850 50  0001 C CNN
F 3 "~" H 3550 8000 50  0001 C CNN
	1    3550 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5FFDDA44
P 4200 8000
F 0 "C9" H 4315 8046 50  0000 L CNN
F 1 "C" H 4315 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 4238 7850 50  0001 C CNN
F 3 "~" H 4200 8000 50  0001 C CNN
	1    4200 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5FFDDA4E
P 4850 8000
F 0 "C10" H 4965 8046 50  0000 L CNN
F 1 "C" H 4965 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 4888 7850 50  0001 C CNN
F 3 "~" H 4850 8000 50  0001 C CNN
	1    4850 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5FFDDA58
P 5550 8000
F 0 "C11" H 5665 8046 50  0000 L CNN
F 1 "C" H 5665 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5588 7850 50  0001 C CNN
F 3 "~" H 5550 8000 50  0001 C CNN
	1    5550 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 600DF96B
P 6150 8000
F 0 "C12" H 6265 8046 50  0000 L CNN
F 1 "C" H 6265 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6188 7850 50  0001 C CNN
F 3 "~" H 6150 8000 50  0001 C CNN
	1    6150 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 600DF975
P 6850 8000
F 0 "C13" H 6965 8046 50  0000 L CNN
F 1 "C" H 6965 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6888 7850 50  0001 C CNN
F 3 "~" H 6850 8000 50  0001 C CNN
	1    6850 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 600DF97F
P 7500 8000
F 0 "C14" H 7615 8046 50  0000 L CNN
F 1 "C" H 7615 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 7538 7850 50  0001 C CNN
F 3 "~" H 7500 8000 50  0001 C CNN
	1    7500 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 600DF989
P 8100 8000
F 0 "C15" H 8215 8046 50  0000 L CNN
F 1 "C" H 8215 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8138 7850 50  0001 C CNN
F 3 "~" H 8100 8000 50  0001 C CNN
	1    8100 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 600DF993
P 8750 8000
F 0 "C16" H 8865 8046 50  0000 L CNN
F 1 "C" H 8865 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8788 7850 50  0001 C CNN
F 3 "~" H 8750 8000 50  0001 C CNN
	1    8750 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 600DF99D
P 9500 8000
F 0 "C17" H 9615 8046 50  0000 L CNN
F 1 "C" H 9615 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 9538 7850 50  0001 C CNN
F 3 "~" H 9500 8000 50  0001 C CNN
	1    9500 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 600DF9A7
P 10150 8000
F 0 "C18" H 10265 8046 50  0000 L CNN
F 1 "C" H 10265 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 10188 7850 50  0001 C CNN
F 3 "~" H 10150 8000 50  0001 C CNN
	1    10150 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 600DF9B1
P 10850 8000
F 0 "C19" H 10965 8046 50  0000 L CNN
F 1 "C" H 10965 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 10888 7850 50  0001 C CNN
F 3 "~" H 10850 8000 50  0001 C CNN
	1    10850 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 601939DB
P 10200 6800
F 0 "C21" H 10315 6846 50  0000 L CNN
F 1 "C" H 10315 6755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 10238 6650 50  0001 C CNN
F 3 "~" H 10200 6800 50  0001 C CNN
	1    10200 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 601939E5
P 10850 6800
F 0 "C22" H 10965 6846 50  0000 L CNN
F 1 "C" H 10965 6755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 10888 6650 50  0001 C CNN
F 3 "~" H 10850 6800 50  0001 C CNN
	1    10850 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 601939EF
P 11550 6800
F 0 "C23" H 11665 6846 50  0000 L CNN
F 1 "C" H 11665 6755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 11588 6650 50  0001 C CNN
F 3 "~" H 11550 6800 50  0001 C CNN
	1    11550 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 60202D05
P 11550 8000
F 0 "C20" H 11665 8046 50  0000 L CNN
F 1 "C" H 11665 7955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 11588 7850 50  0001 C CNN
F 3 "~" H 11550 8000 50  0001 C CNN
	1    11550 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 8150 10850 8150
Wire Wire Line
	10850 8150 10150 8150
Connection ~ 10850 8150
Connection ~ 1750 8150
Wire Wire Line
	1750 8150 1200 8150
Connection ~ 2300 8150
Wire Wire Line
	2300 8150 1750 8150
Connection ~ 2900 8150
Wire Wire Line
	2900 8150 2300 8150
Connection ~ 3550 8150
Wire Wire Line
	3550 8150 2900 8150
Connection ~ 4200 8150
Wire Wire Line
	4200 8150 3550 8150
Connection ~ 4850 8150
Wire Wire Line
	4850 8150 4200 8150
Connection ~ 5550 8150
Wire Wire Line
	5550 8150 4850 8150
Connection ~ 6150 8150
Wire Wire Line
	6150 8150 5550 8150
Connection ~ 6850 8150
Wire Wire Line
	6850 8150 6150 8150
Connection ~ 7500 8150
Wire Wire Line
	7500 8150 6850 8150
Connection ~ 8100 8150
Wire Wire Line
	8100 8150 7500 8150
Connection ~ 8750 8150
Wire Wire Line
	8750 8150 8100 8150
Connection ~ 9500 8150
Wire Wire Line
	9500 8150 8750 8150
Connection ~ 10150 8150
Wire Wire Line
	10150 8150 9500 8150
Wire Wire Line
	1200 8150 1200 8200
Connection ~ 1200 8150
Connection ~ 1200 8200
Wire Wire Line
	1200 8200 1450 8200
Wire Wire Line
	11550 7850 10850 7850
Connection ~ 1750 7850
Wire Wire Line
	1750 7850 1200 7850
Connection ~ 2300 7850
Wire Wire Line
	2300 7850 1750 7850
Connection ~ 2900 7850
Wire Wire Line
	2900 7850 2300 7850
Connection ~ 3550 7850
Wire Wire Line
	3550 7850 2900 7850
Connection ~ 4200 7850
Wire Wire Line
	4200 7850 3550 7850
Connection ~ 4850 7850
Wire Wire Line
	4850 7850 4200 7850
Connection ~ 5550 7850
Wire Wire Line
	5550 7850 4850 7850
Connection ~ 6150 7850
Wire Wire Line
	6150 7850 5550 7850
Connection ~ 6850 7850
Wire Wire Line
	6850 7850 6150 7850
Connection ~ 7500 7850
Wire Wire Line
	7500 7850 6850 7850
Connection ~ 8100 7850
Wire Wire Line
	8100 7850 7500 7850
Connection ~ 8750 7850
Wire Wire Line
	8750 7850 8100 7850
Connection ~ 9500 7850
Wire Wire Line
	9500 7850 8750 7850
Connection ~ 10150 7850
Wire Wire Line
	10150 7850 9500 7850
Connection ~ 10850 7850
Wire Wire Line
	10850 7850 10150 7850
Wire Wire Line
	1200 7850 1200 7200
Connection ~ 1200 7850
Connection ~ 1200 7200
Wire Wire Line
	1200 7200 1450 7200
Wire Wire Line
	10200 6950 10850 6950
Connection ~ 10850 6950
Wire Wire Line
	10850 6950 11400 6950
Wire Wire Line
	11400 7000 11400 6950
Connection ~ 11400 7000
Connection ~ 11400 6950
Wire Wire Line
	11400 6950 11550 6950
Wire Wire Line
	10200 6650 10850 6650
Connection ~ 10850 6650
Wire Wire Line
	10850 6650 11550 6650
Wire Wire Line
	11550 6650 11550 6000
Wire Wire Line
	11550 6000 11150 6000
Connection ~ 11550 6650
Connection ~ 11150 6000
$Comp
L power:GND #PWR0116
U 1 1 6040BC8D
P 150 8200
F 0 "#PWR0116" H 150 7950 50  0001 C CNN
F 1 "GND" H 155 8027 50  0000 C CNN
F 2 "" H 150 8200 50  0001 C CNN
F 3 "" H 150 8200 50  0001 C CNN
	1    150  8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	300  8200 150  8200
Connection ~ 300  8200
$Comp
L Device:LED D1
U 1 1 604476FC
P 10200 150
F 0 "D1" H 10193 367 50  0000 C CNN
F 1 "LED" H 10193 276 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 150 50  0001 C CNN
F 3 "~" H 10200 150 50  0001 C CNN
	1    10200 150 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 604495F8
P 10200 250
F 0 "D2" H 10193 467 50  0000 C CNN
F 1 "LED" H 10193 376 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 250 50  0001 C CNN
F 3 "~" H 10200 250 50  0001 C CNN
	1    10200 250 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 604826CE
P 10200 350
F 0 "D3" H 10193 567 50  0000 C CNN
F 1 "LED" H 10193 476 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 350 50  0001 C CNN
F 3 "~" H 10200 350 50  0001 C CNN
	1    10200 350 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 604826D8
P 10200 450
F 0 "D4" H 10193 667 50  0000 C CNN
F 1 "LED" H 10193 576 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 450 50  0001 C CNN
F 3 "~" H 10200 450 50  0001 C CNN
	1    10200 450 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 604BBE19
P 10200 550
F 0 "D5" H 10193 767 50  0000 C CNN
F 1 "LED" H 10193 676 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 550 50  0001 C CNN
F 3 "~" H 10200 550 50  0001 C CNN
	1    10200 550 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 604BBE23
P 10200 650
F 0 "D6" H 10193 867 50  0000 C CNN
F 1 "LED" H 10193 776 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 650 50  0001 C CNN
F 3 "~" H 10200 650 50  0001 C CNN
	1    10200 650 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 604BBE2D
P 10200 750
F 0 "D7" H 10193 967 50  0000 C CNN
F 1 "LED" H 10193 876 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 750 50  0001 C CNN
F 3 "~" H 10200 750 50  0001 C CNN
	1    10200 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 604BBE37
P 10200 850
F 0 "D8" H 10193 1067 50  0000 C CNN
F 1 "LED" H 10193 976 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 850 50  0001 C CNN
F 3 "~" H 10200 850 50  0001 C CNN
	1    10200 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D9
U 1 1 604F5CC8
P 10200 950
F 0 "D9" H 10193 1167 50  0000 C CNN
F 1 "LED" H 10193 1076 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 950 50  0001 C CNN
F 3 "~" H 10200 950 50  0001 C CNN
	1    10200 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D10
U 1 1 604F5CD2
P 10200 1050
F 0 "D10" H 10193 1267 50  0000 C CNN
F 1 "LED" H 10193 1176 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1050 50  0001 C CNN
F 3 "~" H 10200 1050 50  0001 C CNN
	1    10200 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D11
U 1 1 604F5CDC
P 10200 1150
F 0 "D11" H 10193 1367 50  0000 C CNN
F 1 "LED" H 10193 1276 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1150 50  0001 C CNN
F 3 "~" H 10200 1150 50  0001 C CNN
	1    10200 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D12
U 1 1 604F5CE6
P 10200 1250
F 0 "D12" H 10193 1467 50  0000 C CNN
F 1 "LED" H 10193 1376 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1250 50  0001 C CNN
F 3 "~" H 10200 1250 50  0001 C CNN
	1    10200 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D13
U 1 1 604F5CF0
P 10200 1350
F 0 "D13" H 10193 1567 50  0000 C CNN
F 1 "LED" H 10193 1476 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1350 50  0001 C CNN
F 3 "~" H 10200 1350 50  0001 C CNN
	1    10200 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D14
U 1 1 604F5CFA
P 10200 1450
F 0 "D14" H 10193 1667 50  0000 C CNN
F 1 "LED" H 10193 1576 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1450 50  0001 C CNN
F 3 "~" H 10200 1450 50  0001 C CNN
	1    10200 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D15
U 1 1 604F5D04
P 10200 1550
F 0 "D15" H 10193 1767 50  0000 C CNN
F 1 "LED" H 10193 1676 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1550 50  0001 C CNN
F 3 "~" H 10200 1550 50  0001 C CNN
	1    10200 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D16
U 1 1 604F5D0E
P 10200 1650
F 0 "D16" H 10193 1867 50  0000 C CNN
F 1 "LED" H 10193 1776 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1650 50  0001 C CNN
F 3 "~" H 10200 1650 50  0001 C CNN
	1    10200 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D17
U 1 1 60531A9B
P 10200 1750
F 0 "D17" H 10193 1967 50  0000 C CNN
F 1 "LED" H 10193 1876 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1750 50  0001 C CNN
F 3 "~" H 10200 1750 50  0001 C CNN
	1    10200 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D18
U 1 1 60531AA5
P 10200 1850
F 0 "D18" H 10193 2067 50  0000 C CNN
F 1 "LED" H 10193 1976 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1850 50  0001 C CNN
F 3 "~" H 10200 1850 50  0001 C CNN
	1    10200 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D19
U 1 1 60531AAF
P 10200 1950
F 0 "D19" H 10193 2167 50  0000 C CNN
F 1 "LED" H 10193 2076 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 1950 50  0001 C CNN
F 3 "~" H 10200 1950 50  0001 C CNN
	1    10200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D20
U 1 1 60531AB9
P 10200 2050
F 0 "D20" H 10193 2267 50  0000 C CNN
F 1 "LED" H 10193 2176 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 2050 50  0001 C CNN
F 3 "~" H 10200 2050 50  0001 C CNN
	1    10200 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D21
U 1 1 60531AC3
P 10200 2150
F 0 "D21" H 10193 2367 50  0000 C CNN
F 1 "LED" H 10193 2276 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 2150 50  0001 C CNN
F 3 "~" H 10200 2150 50  0001 C CNN
	1    10200 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D22
U 1 1 60531ACD
P 10200 2250
F 0 "D22" H 10193 2467 50  0000 C CNN
F 1 "LED" H 10193 2376 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 2250 50  0001 C CNN
F 3 "~" H 10200 2250 50  0001 C CNN
	1    10200 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D23
U 1 1 60531AE1
P 10200 2350
F 0 "D23" H 10193 2567 50  0000 C CNN
F 1 "LED" H 10193 2476 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 2350 50  0001 C CNN
F 3 "~" H 10200 2350 50  0001 C CNN
	1    10200 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D24
U 1 1 60531AF5
P 10200 2550
F 0 "D24" H 10193 2767 50  0000 C CNN
F 1 "LED" H 10193 2676 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 2550 50  0001 C CNN
F 3 "~" H 10200 2550 50  0001 C CNN
	1    10200 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D25
U 1 1 60531AFF
P 10200 2650
F 0 "D25" H 10193 2867 50  0000 C CNN
F 1 "LED" H 10193 2776 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 2650 50  0001 C CNN
F 3 "~" H 10200 2650 50  0001 C CNN
	1    10200 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D26
U 1 1 60531B09
P 10200 2750
F 0 "D26" H 10193 2967 50  0000 C CNN
F 1 "LED" H 10193 2876 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 2750 50  0001 C CNN
F 3 "~" H 10200 2750 50  0001 C CNN
	1    10200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D27
U 1 1 60531B13
P 10200 2850
F 0 "D27" H 10193 3067 50  0000 C CNN
F 1 "LED" H 10193 2976 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 10200 2850 50  0001 C CNN
F 3 "~" H 10200 2850 50  0001 C CNN
	1    10200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 150  10050 150 
Wire Wire Line
	9900 250  10050 250 
Wire Wire Line
	10050 350  9900 350 
Wire Wire Line
	9900 450  10050 450 
Wire Wire Line
	10050 550  9900 550 
Wire Wire Line
	9900 650  10050 650 
Wire Wire Line
	10050 750  9900 750 
Wire Wire Line
	9900 850  10050 850 
Wire Wire Line
	10050 950  9900 950 
Wire Wire Line
	9900 1050 10050 1050
Wire Wire Line
	10050 1150 9900 1150
Wire Wire Line
	9900 1250 10050 1250
Wire Wire Line
	10050 1350 9900 1350
Wire Wire Line
	9900 1450 10050 1450
Wire Wire Line
	10050 1550 9900 1550
Wire Wire Line
	9900 1650 10050 1650
Wire Wire Line
	10050 1750 9900 1750
Wire Wire Line
	9900 1850 10050 1850
Wire Wire Line
	10050 1950 9900 1950
Wire Wire Line
	9900 2050 10050 2050
Wire Wire Line
	10050 2150 9900 2150
Wire Wire Line
	9900 2250 10050 2250
Wire Wire Line
	10050 2350 9900 2350
Wire Wire Line
	9900 2550 10050 2550
Wire Wire Line
	10050 2650 9900 2650
Wire Wire Line
	9900 2750 10050 2750
Wire Wire Line
	10050 2850 9900 2850
$Comp
L Device:R_Network08 RN1
U 1 1 60E807FC
P 10850 550
F 0 "RN1" V 10233 550 50  0000 C CNN
F 1 "R_Network08" V 10324 550 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 11325 550 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 10850 550 50  0001 C CNN
	1    10850 550 
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN2
U 1 1 60E896E7
P 10850 1350
F 0 "RN2" V 10233 1350 50  0000 C CNN
F 1 "R_Network08" V 10324 1350 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 11325 1350 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 10850 1350 50  0001 C CNN
	1    10850 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN3
U 1 1 60E8F265
P 10850 2150
F 0 "RN3" V 10233 2150 50  0000 C CNN
F 1 "R_Network08" V 10324 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 11325 2150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 10850 2150 50  0001 C CNN
	1    10850 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN4
U 1 1 60E9375A
P 10650 2950
F 0 "RN4" V 10033 2950 50  0000 C CNN
F 1 "R_Network08" V 10124 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 11125 2950 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 10650 2950 50  0001 C CNN
	1    10650 2950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 60E9A950
P 11300 150
F 0 "#PWR0117" H 11300 0   50  0001 C CNN
F 1 "+5V" H 11315 323 50  0000 C CNN
F 2 "" H 11300 150 50  0001 C CNN
F 3 "" H 11300 150 50  0001 C CNN
	1    11300 150 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 150  11300 150 
Wire Wire Line
	11300 2550 10850 2550
Connection ~ 11300 150 
Wire Wire Line
	11050 1750 11300 1750
Connection ~ 11300 1750
Wire Wire Line
	11300 1750 11300 2550
Wire Wire Line
	11300 150  11300 950 
Wire Wire Line
	11050 950  11300 950 
Connection ~ 11300 950 
Wire Wire Line
	11300 950  11300 1750
Wire Wire Line
	10350 150  10650 150 
Wire Wire Line
	10350 250  10650 250 
Wire Wire Line
	10350 350  10650 350 
Wire Wire Line
	10650 450  10350 450 
Wire Wire Line
	10350 550  10650 550 
Wire Wire Line
	10650 650  10350 650 
Wire Wire Line
	10350 750  10650 750 
Wire Wire Line
	10650 850  10350 850 
Wire Wire Line
	10350 950  10650 950 
Wire Wire Line
	10650 1050 10350 1050
Wire Wire Line
	10350 1150 10650 1150
Wire Wire Line
	10650 1250 10350 1250
Wire Wire Line
	10350 1350 10650 1350
Wire Wire Line
	10650 1450 10350 1450
Wire Wire Line
	10350 1550 10650 1550
Wire Wire Line
	10650 1650 10350 1650
Wire Wire Line
	10350 1750 10650 1750
Wire Wire Line
	10650 1850 10350 1850
Wire Wire Line
	10350 1950 10650 1950
Wire Wire Line
	10650 2050 10350 2050
Wire Wire Line
	10350 2150 10650 2150
Wire Wire Line
	10650 2250 10350 2250
Wire Wire Line
	10350 2350 10650 2350
NoConn ~ 10650 2450
NoConn ~ 10450 2950
NoConn ~ 10450 3050
NoConn ~ 10450 3150
NoConn ~ 10450 3250
Wire Wire Line
	10350 2550 10450 2550
Wire Wire Line
	10450 2650 10350 2650
Wire Wire Line
	10450 2750 10350 2750
Wire Wire Line
	10450 2850 10350 2850
Wire Wire Line
	5600 2050 5700 2050
Wire Wire Line
	7550 4550 7450 4550
Wire Wire Line
	2550 2800 2550 2700
Wire Wire Line
	2550 2700 2600 2700
Wire Wire Line
	2000 2050 2800 2050
Wire Wire Line
	2800 1050 2800 2050
$Comp
L 74xx:74LS00 U18
U 2 1 5FCBEA8F
P 2950 4350
F 0 "U18" H 2950 4675 50  0000 C CNN
F 1 "74LS00" H 2950 4584 50  0000 C CNN
F 2 "" H 2950 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 2950 4350 50  0001 C CNN
	2    2950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4250 2650 4250
Wire Wire Line
	2650 4250 2650 4450
Connection ~ 2650 4250
Wire Wire Line
	3250 4350 3400 4350
Text Label 2900 4350 0    50   ~ 0
L2
$Comp
L 74xx:74LS00 U18
U 1 1 5FE7C36F
P 3450 3950
F 0 "U18" V 3404 4138 50  0000 L CNN
F 1 "74LS00" V 3495 4138 50  0000 L CNN
F 2 "" H 3450 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3450 3950 50  0001 C CNN
	1    3450 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 4250 3550 4250
Wire Wire Line
	3550 4250 3550 4100
Wire Wire Line
	3550 4100 3650 4100
Wire Wire Line
	3350 3650 3550 3650
Wire Wire Line
	3350 3650 3250 3650
Wire Wire Line
	3250 3650 3250 4100
Wire Wire Line
	3250 4100 2700 4100
Wire Wire Line
	2700 4100 2700 3600
Wire Wire Line
	2700 3600 2550 3600
Connection ~ 3350 3650
Text Label 3400 3950 0    50   ~ 0
L1
$EndSCHEMATC
