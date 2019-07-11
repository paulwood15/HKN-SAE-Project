EESchema Schematic File Version 4
LIBS:PowerSenseModule-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Power Sense Module - Main Page and Power"
Date ""
Rev ""
Comp "University of Central Florida - HKN Zeta Chi"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7450 1300 1700 1550
U 5D226D6E
F0 "MCU and CAN" 50
F1 "MCU.sch" 50
F2 "PSEN_EVENT2" I R 9150 1750 50 
F3 "PSEN_EVENT1" I R 9150 1650 50 
F4 "PSEN_ADC_RST" O L 7450 1700 50 
F5 "PSEN_MCLR" O L 7450 1550 50 
F6 "PSEN_UART_RX" I R 9150 2350 50 
F7 "PSEN_UART_TX" O R 9150 2500 50 
F8 "PSEN_ZCD" I R 9150 1950 50 
$EndSheet
$Sheet
S 7500 3400 1650 1300
U 5D23DC70
F0 "Power Sensing" 50
F1 "sensing.sch" 50
F2 "PSEN_EVENT2" O R 9150 3750 50 
F3 "PSEN_EVENT1" O R 9150 3600 50 
F4 "PSEN_ADC_RST" I L 7500 3700 50 
F5 "PSEN_MCLR" I L 7500 3550 50 
F6 "PSEN_UART_RX" I R 9150 4500 50 
F7 "PSEN_UART_TX" O R 9150 4350 50 
F8 "PSEN_ZCD" O R 9150 4100 50 
F9 "Live_IN" I L 7500 4150 50 
F10 "Neutral_IN" I L 7500 4250 50 
F11 "Neutral_OUT" I L 7500 4550 50 
F12 "Live_OUT" I L 7500 4450 50 
$EndSheet
Wire Wire Line
	9150 2500 9450 2500
Wire Wire Line
	9450 2500 9450 4350
Wire Wire Line
	9450 4350 9150 4350
Wire Wire Line
	9150 2350 9600 2350
Wire Wire Line
	9600 2350 9600 4500
Wire Wire Line
	9600 4500 9150 4500
Wire Wire Line
	9150 1950 9750 1950
Wire Wire Line
	9750 1950 9750 4100
Wire Wire Line
	9750 4100 9150 4100
Wire Wire Line
	9150 1750 9900 1750
Wire Wire Line
	9900 1750 9900 3750
Wire Wire Line
	9900 3750 9150 3750
Wire Wire Line
	9150 1650 10100 1650
Wire Wire Line
	10100 1650 10100 3600
Wire Wire Line
	10100 3600 9150 3600
Wire Wire Line
	7500 3550 7100 3550
Wire Wire Line
	7100 3550 7100 1550
Wire Wire Line
	7100 1550 7450 1550
Wire Wire Line
	7500 3700 6850 3700
Wire Wire Line
	6850 3700 6850 1700
Wire Wire Line
	6850 1700 7450 1700
$Comp
L F1_Power_ICs:Buck_Converter_TPS82150 U?
U 1 1 5D27B15E
P 4300 1600
F 0 "U?" H 4350 2065 50  0000 C CNN
F 1 "Buck_Converter_TPS82150" H 4350 1974 50  0000 C CNN
F 2 "" H 4350 1950 50  0000 C CNN
F 3 "" H 4350 1950 50  0000 C CNN
	1    4300 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5D27C353
P 1200 1900
F 0 "J?" H 1280 1892 50  0000 L CNN
F 1 "Power_IN" H 1280 1801 50  0000 L CNN
F 2 "" H 1200 1900 50  0001 C CNN
F 3 "~" H 1200 1900 50  0001 C CNN
	1    1200 1900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5D27CE9F
P 1450 3150
F 0 "J?" H 1530 3142 50  0000 L CNN
F 1 "Power_OUT" H 1530 3051 50  0000 L CNN
F 2 "" H 1450 3150 50  0001 C CNN
F 3 "~" H 1450 3150 50  0001 C CNN
	1    1450 3150
	-1   0    0    1   
$EndComp
$Comp
L F1_TVS_Diodes:TVS1400 D?
U 1 1 5D295415
P 1850 1650
F 0 "D?" V 1846 1321 50  0000 R CNN
F 1 "TVS1400" V 1755 1321 50  0000 R CNN
F 2 "Package_SON_Custom:WSON-6-2NET-1EP_2x2mm_P0.65mm_EP1x1.6mm" H 2000 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tvs1400.pdf" H 1800 1500 50  0001 C CNN
	1    1850 1650
	0    -1   -1   0   
$EndComp
$Comp
L F1_TVS_Diodes:TVS1400 D?
U 1 1 5D295E23
P 2350 2050
F 0 "D?" V 2254 1888 50  0000 L CNN
F 1 "TVS1400" V 2345 1888 50  0000 L CNN
F 2 "Package_SON_Custom:WSON-6-2NET-1EP_2x2mm_P0.65mm_EP1x1.6mm" H 2500 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tvs1400.pdf" H 2300 1900 50  0001 C CNN
	1    2350 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 1800 1650 1800
Wire Wire Line
	1650 1800 1650 1550
Wire Wire Line
	1650 1550 2100 1550
Connection ~ 2100 1550
Wire Wire Line
	1400 1900 1650 1900
Wire Wire Line
	1650 1900 1650 2150
Wire Wire Line
	1650 2150 2100 2150
Connection ~ 2100 2150
Wire Wire Line
	3400 2150 3400 1700
Wire Wire Line
	3400 1700 3750 1700
Wire Wire Line
	3750 1850 3750 2050
Wire Wire Line
	3750 2050 4950 2050
Wire Wire Line
	4950 2050 4950 1850
Text Label 2850 1550 0    50   ~ 0
Live_P_IN
Text Label 2850 2150 0    50   ~ 0
Neutral_P_IN
Wire Wire Line
	2100 1550 3750 1550
Wire Wire Line
	2100 2150 3400 2150
Text Label 7400 4150 2    50   ~ 0
Live_P_IN
Text Label 7400 4250 2    50   ~ 0
Neutral_P_IN
Wire Wire Line
	7400 4150 7500 4150
Wire Wire Line
	7400 4250 7500 4250
Text Label 1750 3150 0    50   ~ 0
Neutral_S_OUT
Text Label 1750 3050 0    50   ~ 0
Live_S_OUT
Wire Wire Line
	1750 3050 1650 3050
Wire Wire Line
	1750 3150 1650 3150
Text Notes 850  800  0    50   ~ 0
Live_x_y\nx     -P=Protected     -S=Sensed\ny     -IN     -OUT
$EndSCHEMATC
