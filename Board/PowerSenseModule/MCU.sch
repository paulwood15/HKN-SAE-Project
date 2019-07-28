EESchema Schematic File Version 4
LIBS:PowerSenseModule-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Power Sense Module - MCU"
Date ""
Rev "1.0"
Comp "University of Central Florida - HKN Zeta Chi"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:CP1 C15
U 1 1 5D1B11E5
P 4900 1750
F 0 "C15" H 4785 1704 50  0000 R CNN
F 1 "10uF" H 4785 1795 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-12_Kemet-T_Pad1.50x2.35mm_HandSolder" H 4900 1750 50  0001 C CNN
F 3 "~" H 4900 1750 50  0001 C CNN
	1    4900 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 1800 4600 1800
Text Notes 5000 1900 0    50   ~ 0
tantalum, < 1 Ohm ESR\n
$Comp
L Device:R_US R4
U 1 1 5D1B51D5
P 2950 1850
F 0 "R4" H 3018 1896 50  0000 L CNN
F 1 "10k" H 3018 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2990 1840 50  0001 C CNN
F 3 "~" H 2950 1850 50  0001 C CNN
	1    2950 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5D1B85DD
P 3300 2100
F 0 "R5" H 3368 2146 50  0000 L CNN
F 1 "470" H 3368 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3340 2090 50  0001 C CNN
F 3 "~" H 3300 2100 50  0001 C CNN
	1    3300 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 2000 2950 2100
Wire Wire Line
	2950 2100 3150 2100
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 5D1B8B21
P 2950 2300
F 0 "JP1" V 2900 2100 50  0000 L CNN
F 1 "Jumper_NO_Small" V 3000 1600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2950 2300 50  0001 C CNN
F 3 "~" H 2950 2300 50  0001 C CNN
	1    2950 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2200 2950 2100
Connection ~ 2950 2100
$Comp
L Device:C C12
U 1 1 5D1BA03E
P 2950 2550
F 0 "C12" H 3065 2596 50  0000 L CNN
F 1 "0.1uF" H 3065 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2988 2400 50  0001 C CNN
F 3 "~" H 2950 2550 50  0001 C CNN
	1    2950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4300 4400 4500
Wire Wire Line
	4400 4500 4550 4500
Wire Wire Line
	4550 4500 4550 4300
Text Notes 1800 3000 0    50   ~ 0
Capacitor disconnected when programming\n
$Comp
L power:+5V #PWR030
U 1 1 5D1D3CD9
P 8350 3500
F 0 "#PWR030" H 8350 3350 50  0001 C CNN
F 1 "+5V" H 8400 3650 50  0000 C CNN
F 2 "" H 8350 3500 50  0001 C CNN
F 3 "" H 8350 3500 50  0001 C CNN
	1    8350 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR029
U 1 1 5D1D4392
P 8250 3500
F 0 "#PWR029" H 8250 3350 50  0001 C CNN
F 1 "+3.3V" H 8200 3650 50  0000 C CNN
F 2 "" H 8250 3500 50  0001 C CNN
F 3 "" H 8250 3500 50  0001 C CNN
	1    8250 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5D1D5ACD
P 9150 3900
F 0 "R7" H 9218 3946 50  0000 L CNN
F 1 "120" H 9218 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9190 3890 50  0001 C CNN
F 3 "~" H 9150 3900 50  0001 C CNN
	1    9150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3800 9000 3800
Wire Wire Line
	9000 3800 9000 3750
Wire Wire Line
	8850 4000 9000 4000
Wire Wire Line
	9000 4000 9000 4050
$Comp
L power:+3.3V #PWR017
U 1 1 5D1E7B70
P 2950 1700
F 0 "#PWR017" H 2950 1550 50  0001 C CNN
F 1 "+3.3V" H 2965 1873 50  0000 C CNN
F 2 "" H 2950 1700 50  0001 C CNN
F 3 "" H 2950 1700 50  0001 C CNN
	1    2950 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 5D1E7EFD
P 4600 1250
F 0 "#PWR022" H 4600 1100 50  0001 C CNN
F 1 "+3.3V" H 4615 1423 50  0000 C CNN
F 2 "" H 4600 1250 50  0001 C CNN
F 3 "" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5D1E73B5
P 1500 5100
F 0 "#PWR015" H 1500 4950 50  0001 C CNN
F 1 "+3.3V" H 1515 5273 50  0000 C CNN
F 2 "" H 1500 5100 50  0001 C CNN
F 3 "" H 1500 5100 50  0001 C CNN
	1    1500 5100
	1    0    0    -1  
$EndComp
Text Notes 1750 5000 0    50   ~ 0
Close to VDD MCU pin\n
$Comp
L Device:C C10
U 1 1 5D1BE442
P 1700 5250
F 0 "C10" H 1500 5300 50  0000 L CNN
F 1 "0.01uF" H 1350 5200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1738 5100 50  0001 C CNN
F 3 "~" H 1700 5250 50  0001 C CNN
	1    1700 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5D1BE43C
P 2000 5250
F 0 "C11" H 2115 5296 50  0000 L CNN
F 1 "0.1uF" H 2115 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2038 5100 50  0001 C CNN
F 3 "~" H 2000 5250 50  0001 C CNN
	1    2000 5250
	1    0    0    -1  
$EndComp
Text Notes 3200 5000 0    50   ~ 0
Close to CAN transceiver
$Comp
L Device:C C13
U 1 1 5D1E97D0
P 3150 5250
F 0 "C13" H 2950 5300 50  0000 L CNN
F 1 "0.01uF" H 2800 5200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 5100 50  0001 C CNN
F 3 "~" H 3150 5250 50  0001 C CNN
	1    3150 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5D1E97D6
P 3450 5250
F 0 "C14" H 3565 5296 50  0000 L CNN
F 1 "0.1uF" H 3565 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3488 5100 50  0001 C CNN
F 3 "~" H 3450 5250 50  0001 C CNN
	1    3450 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5D1E9E31
P 2950 5100
F 0 "#PWR019" H 2950 4950 50  0001 C CNN
F 1 "+5V" H 2965 5273 50  0000 C CNN
F 2 "" H 2950 5100 50  0001 C CNN
F 3 "" H 2950 5100 50  0001 C CNN
	1    2950 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5D1EB185
P 8550 2500
F 0 "J3" H 8630 2492 50  0000 L CNN
F 1 "Programming Header" H 8630 2401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8550 2500 50  0001 C CNN
F 3 "~" H 8550 2500 50  0001 C CNN
	1    8550 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR027
U 1 1 5D1EE46F
P 8200 2150
F 0 "#PWR027" H 8200 2000 50  0001 C CNN
F 1 "+3.3V" H 8215 2323 50  0000 C CNN
F 2 "" H 8200 2150 50  0001 C CNN
F 3 "" H 8200 2150 50  0001 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2400 8200 2400
Wire Wire Line
	8200 2400 8200 2150
Wire Wire Line
	8350 2500 8200 2500
Wire Wire Line
	2050 2100 2950 2100
$Comp
L F1_Microchip_MCUs:dsPIC33EP32GP502_QFN U3
U 1 1 5D1D3BA4
P 3550 4200
F 0 "U3" H 3406 5346 50  0000 R CNN
F 1 "dsPIC33EP32GP502_QFN" H 3406 5255 50  0000 R CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_6x6mm_P0.65mm_EP4.25x4.25mm_ThermalVias" H 4000 6850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/70000657H.pdf" H 4000 6850 50  0001 C CNN
	1    3550 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1800 4600 1900
Wire Wire Line
	4750 1800 4750 1900
Wire Wire Line
	4600 1250 4600 1800
Wire Wire Line
	9000 3750 9150 3750
Wire Wire Line
	9000 4050 9150 4050
Wire Wire Line
	1500 5400 1700 5400
Wire Wire Line
	1500 5100 1700 5100
Wire Wire Line
	2950 5400 3150 5400
Wire Wire Line
	2950 5100 3150 5100
Text HLabel 6750 2500 2    50   Input ~ 0
PSEN_EVENT2
Wire Wire Line
	7850 3800 5950 3800
Wire Wire Line
	7700 3900 5950 3900
Text HLabel 6750 3000 2    50   Input ~ 0
PSEN_EVENT1
Text HLabel 6750 3100 2    50   Input ~ 0
PSEN_ADC_RST
Text HLabel 6750 3200 2    50   Input ~ 0
PSEN_MCLR
Text HLabel 6750 3300 2    50   Input ~ 0
PSEN_UART_RX
Text HLabel 6750 3400 2    50   Input ~ 0
PSEN_UART_TX
Text HLabel 6750 3500 2    50   Input ~ 0
PSEN_ZCD
Wire Wire Line
	7700 4100 7850 4100
Text HLabel 9650 3750 2    50   Input ~ 0
CANH
Text HLabel 9650 4050 2    50   Input ~ 0
CANL
Connection ~ 4600 1800
Connection ~ 1700 5100
Wire Wire Line
	1700 5100 2000 5100
Connection ~ 1700 5400
Wire Wire Line
	1700 5400 2000 5400
Connection ~ 3150 5100
Wire Wire Line
	3150 5100 3450 5100
Connection ~ 3150 5400
Wire Wire Line
	3150 5400 3450 5400
Connection ~ 9150 3750
Wire Wire Line
	9150 3750 9650 3750
Connection ~ 9150 4050
Wire Wire Line
	9150 4050 9650 4050
Wire Wire Line
	5950 3700 7850 3700
Wire Wire Line
	7700 3900 7700 4100
Wire Wire Line
	6750 2500 5950 2500
Wire Wire Line
	6750 3000 5950 3000
Wire Wire Line
	6750 3100 5950 3100
Wire Wire Line
	6750 3200 5950 3200
Wire Wire Line
	6750 3300 5950 3300
Wire Wire Line
	6750 3400 5950 3400
Wire Wire Line
	6750 3500 5950 3500
Wire Wire Line
	8200 2500 8200 2800
Wire Wire Line
	8350 2800 8200 2800
Connection ~ 8200 2800
Wire Wire Line
	8200 2800 8200 2850
Wire Wire Line
	8350 2600 7600 2600
Wire Wire Line
	7600 2600 7600 2800
Wire Wire Line
	5950 2800 7600 2800
Wire Wire Line
	8350 2700 7700 2700
Wire Wire Line
	7700 2700 7700 2900
Wire Wire Line
	5950 2900 7700 2900
Text Notes 6050 3700 0    50   ~ 0
CAN_TX\n
Text Notes 6050 3800 0    50   ~ 0
CAN_RX\n
Text Notes 6050 3900 0    50   ~ 0
CAN_STBY
Text Notes 6050 2800 0    50   ~ 0
PDEC
Text Notes 6050 2900 0    50   ~ 0
PGEC
Wire Wire Line
	2050 2100 2050 700 
Wire Wire Line
	2050 700  7900 700 
Wire Wire Line
	7900 700  7900 2300
Wire Wire Line
	7900 2300 8350 2300
Text Notes 8200 2600 0    50   ~ 0
PDEC
Text Notes 8200 2700 0    50   ~ 0
PGEC
Text Notes 8200 2300 0    50   ~ 0
MCLR
Wire Wire Line
	5950 2100 6100 2100
Wire Wire Line
	6100 2100 6100 2200
Wire Wire Line
	5950 2200 6100 2200
Connection ~ 6100 2200
Wire Wire Line
	6100 2200 6100 2300
Wire Wire Line
	5950 2300 6100 2300
Connection ~ 6100 2300
Wire Wire Line
	6100 2300 6100 2400
Wire Wire Line
	5950 2400 6100 2400
Connection ~ 6100 2400
Wire Wire Line
	6100 2400 6100 2600
Wire Wire Line
	5950 2600 6100 2600
Connection ~ 6100 2600
Wire Wire Line
	6100 2600 6100 2700
Wire Wire Line
	5950 2700 6100 2700
Connection ~ 6100 2700
Wire Wire Line
	6100 2700 6100 3600
Wire Wire Line
	5950 3600 6100 3600
Connection ~ 6100 3600
Wire Wire Line
	6100 3600 6100 4000
Wire Wire Line
	5950 4000 6100 4000
Connection ~ 6100 4000
Wire Wire Line
	6100 4000 6100 4100
Wire Wire Line
	5950 4100 6100 4100
Connection ~ 6100 4100
Wire Wire Line
	6100 4100 6100 4350
$Comp
L Device:R_US R6
U 1 1 5D3BE01C
P 6100 4500
F 0 "R6" H 6168 4546 50  0000 L CNN
F 1 "10k" H 6168 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6140 4490 50  0001 C CNN
F 3 "~" H 6100 4500 50  0001 C CNN
	1    6100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4650 6100 4750
$Comp
L power:GNDD #PWR026
U 1 1 5D3C467D
P 6100 4750
F 0 "#PWR026" H 6100 4500 50  0001 C CNN
F 1 "GNDD" H 6104 4595 50  0000 C CNN
F 2 "" H 6100 4750 50  0001 C CNN
F 3 "" H 6100 4750 50  0001 C CNN
	1    6100 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR028
U 1 1 5D3C46D6
P 8200 2850
F 0 "#PWR028" H 8200 2600 50  0001 C CNN
F 1 "GNDD" H 8204 2695 50  0000 C CNN
F 2 "" H 8200 2850 50  0001 C CNN
F 3 "" H 8200 2850 50  0001 C CNN
	1    8200 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR021
U 1 1 5D3EDC9C
P 4550 4500
F 0 "#PWR021" H 4550 4250 50  0001 C CNN
F 1 "GNDD" H 4554 4345 50  0000 C CNN
F 2 "" H 4550 4500 50  0001 C CNN
F 3 "" H 4550 4500 50  0001 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
Connection ~ 4550 4500
$Comp
L power:GNDD #PWR024
U 1 1 5D3F3C7A
P 4850 4500
F 0 "#PWR024" H 4850 4250 50  0001 C CNN
F 1 "GNDD" H 4854 4345 50  0000 C CNN
F 2 "" H 4850 4500 50  0001 C CNN
F 3 "" H 4850 4500 50  0001 C CNN
	1    4850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4500 4850 4300
$Comp
L power:GNDA #PWR023
U 1 1 5D3F656F
P 4700 4700
F 0 "#PWR023" H 4700 4450 50  0001 C CNN
F 1 "GNDA" H 4705 4527 50  0000 C CNN
F 2 "" H 4700 4700 50  0001 C CNN
F 3 "" H 4700 4700 50  0001 C CNN
	1    4700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4700 4700 4300
$Comp
L power:GNDD #PWR020
U 1 1 5D3FABB0
P 2950 5400
F 0 "#PWR020" H 2950 5150 50  0001 C CNN
F 1 "GNDD" H 2954 5245 50  0000 C CNN
F 2 "" H 2950 5400 50  0001 C CNN
F 3 "" H 2950 5400 50  0001 C CNN
	1    2950 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR016
U 1 1 5D3FB889
P 1500 5400
F 0 "#PWR016" H 1500 5150 50  0001 C CNN
F 1 "GNDD" H 1504 5245 50  0000 C CNN
F 2 "" H 1500 5400 50  0001 C CNN
F 3 "" H 1500 5400 50  0001 C CNN
	1    1500 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR025
U 1 1 5D3FBC0D
P 4900 1600
F 0 "#PWR025" H 4900 1350 50  0001 C CNN
F 1 "GNDD" H 4904 1445 50  0000 C CNN
F 2 "" H 4900 1600 50  0001 C CNN
F 3 "" H 4900 1600 50  0001 C CNN
	1    4900 1600
	-1   0    0    1   
$EndComp
$Comp
L power:GNDD #PWR018
U 1 1 5D3FC142
P 2950 2700
F 0 "#PWR018" H 2950 2450 50  0001 C CNN
F 1 "GNDD" H 2954 2545 50  0000 C CNN
F 2 "" H 2950 2700 50  0001 C CNN
F 3 "" H 2950 2700 50  0001 C CNN
	1    2950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR031
U 1 1 5D3FDEC2
P 8350 4300
F 0 "#PWR031" H 8350 4050 50  0001 C CNN
F 1 "GNDD" H 8350 4150 50  0000 C CNN
F 2 "" H 8350 4300 50  0001 C CNN
F 3 "" H 8350 4300 50  0001 C CNN
	1    8350 4300
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2542FDxMF U4
U 1 1 5D33FB36
P 8350 3900
F 0 "U4" H 8000 3550 50  0000 C CNN
F 1 "MCP2542FDxMF" H 8800 3500 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x3mm_P0.65mm_EP1.55x2.4mm" H 8350 3400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MCP2542FD-4FD-MCP2542WFD-4WFD-Data-Sheet20005514B.pdf" H 8350 3900 50  0001 C CNN
	1    8350 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
