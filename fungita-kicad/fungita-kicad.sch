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
L Relay:DIPxx-1Cxx-51x K?
U 1 1 62F9B8E1
P 4950 5150
F 0 "K?" H 5380 5196 50  0000 L CNN
F 1 "DIPxx-1Cxx-51x" H 5380 5105 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 5400 5100 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4950 5150 50  0001 C CNN
	1    4950 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62F97FFC
P 3350 5700
F 0 "#PWR?" H 3350 5550 50  0001 C CNN
F 1 "+5V" V 3365 5828 50  0000 L CNN
F 2 "" H 3350 5700 50  0001 C CNN
F 3 "" H 3350 5700 50  0001 C CNN
	1    3350 5700
	0    1    1    0   
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32U U?
U 1 1 62F9FC24
P 3400 3650
F 0 "U?" H 3400 5231 50  0000 C CNN
F 1 "ESP32-WROOM-32U" H 3400 5140 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32U" H 3400 2150 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 3100 3700 50  0001 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5450 4000 5450
Wire Wire Line
	4000 5450 4000 4750
Wire Wire Line
	4750 4850 4200 4850
Wire Wire Line
	4200 4850 4200 5050
Wire Wire Line
	4200 5050 3400 5050
Wire Wire Line
	3450 5700 5150 5700
Wire Wire Line
	5150 5450 5150 5700
$Comp
L Sensor_Humidity:ENS210 U?
U 1 1 62FA9A16
P 8000 3050
F 0 "U?" H 8230 3096 50  0000 L CNN
F 1 "ENS210" H 8230 3005 50  0000 L CNN
F 2 "Package_DFN_QFN:AMS_QFN-4-1EP_2x2mm_P0.95mm_EP0.7x1.6mm" H 8000 2650 50  0001 C CNN
F 3 "http://ams.com/eng/Products/Environmental-Sensors/Relative-Humidity-and-Temperature-Sensors/ENS210" H 8000 3050 50  0001 C CNN
	1    8000 3050
	1    0    0    -1  
$EndComp
Wire Bus Line
	6500 6400 6500 1100
Wire Bus Line
	6500 1100 6450 1100
Wire Wire Line
	5250 4850 5250 2550
Wire Wire Line
	5250 2550 8100 2550
Wire Wire Line
	8100 2550 8100 2750
Wire Wire Line
	8100 3350 7600 3350
Wire Wire Line
	7600 3350 7600 2650
Wire Wire Line
	7600 2650 5350 2650
Wire Wire Line
	5350 2650 5350 4650
Wire Wire Line
	5350 4650 4200 4650
Wire Wire Line
	4200 4650 4200 4850
Connection ~ 4200 4850
$Comp
L Connector:Conn_WallPlug P?
U 1 1 62FB4380
P 2750 6800
F 0 "P?" H 2767 7125 50  0000 C CNN
F 1 "Conn_WallPlug" H 2767 7034 50  0000 C CNN
F 2 "" H 3150 6800 50  0001 C CNN
F 3 "~" H 3150 6800 50  0001 C CNN
	1    2750 6800
	1    0    0    -1  
$EndComp
$Comp
L Relay:DIPxx-1Cxx-51x K?
U 1 1 62FB5633
P 4600 6800
F 0 "K?" H 5030 6846 50  0000 L CNN
F 1 "DIPxx-1Cxx-51x" H 5030 6755 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 5050 6750 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4600 6800 50  0001 C CNN
	1    4600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6900 3500 6900
Wire Wire Line
	3500 6900 3500 7500
Wire Wire Line
	3500 7500 6750 7500
Wire Wire Line
	6750 7500 6750 5700
$Comp
L Motor:Fan_Tacho M?
U 1 1 62FB640F
P 8250 5450
F 0 "M?" H 8408 5446 50  0000 L CNN
F 1 "Fan_Tacho" H 8408 5355 50  0000 L CNN
F 2 "" H 8250 5360 50  0001 C CNN
F 3 "http://www.hardwarecanucks.com/forum/attachments/new-builds/16287d1330775095-help-chassis-power-fan-connectors-motherboard-asus_p8z68.jpg" H 8250 5360 50  0001 C CNN
	1    8250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5700 8150 5750
Wire Wire Line
	8150 5750 8250 5750
Wire Wire Line
	6750 5700 8150 5700
Wire Wire Line
	2950 6700 3600 6700
Wire Wire Line
	3600 6700 3600 7400
Wire Wire Line
	3600 7400 4800 7400
Wire Wire Line
	4800 7400 4800 7100
Wire Wire Line
	4900 6500 5650 6500
Wire Wire Line
	5650 6500 5650 7250
Wire Wire Line
	5650 7250 6700 7250
Wire Wire Line
	6700 7250 6700 5250
Wire Wire Line
	6700 5250 8250 5250
Wire Wire Line
	4200 5050 4200 6500
Wire Wire Line
	4200 6500 4400 6500
Connection ~ 4200 5050
Wire Wire Line
	4000 4650 4050 4650
Wire Wire Line
	4050 4650 4050 7100
Wire Wire Line
	4050 7100 4400 7100
Wire Wire Line
	4000 4550 4450 4550
Connection ~ 4200 4650
$Comp
L power:+3V0 #PWR?
U 1 1 62FBEB88
P 3400 6100
F 0 "#PWR?" H 3400 5950 50  0001 C CNN
F 1 "+3V0" V 3415 6228 50  0000 L CNN
F 2 "" H 3400 6100 50  0001 C CNN
F 3 "" H 3400 6100 50  0001 C CNN
	1    3400 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 6100 3850 6100
Wire Wire Line
	3850 6100 3850 5250
Wire Wire Line
	3850 5250 4350 5250
Wire Wire Line
	4450 2050 4450 4550
$Comp
L Sensor:DHT11 U?
U 1 1 62FBBD2E
P 8100 1950
F 0 "U?" H 7856 1904 50  0000 R CNN
F 1 "DHT11" H 7856 1995 50  0000 R CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 8100 1550 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/aosong/DHT11.pdf" H 8250 2200 50  0001 C CNN
	1    8100 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 5250 4350 2350
Wire Wire Line
	7500 2250 8100 2250
Wire Wire Line
	7350 1650 8100 1650
Wire Wire Line
	4200 1750 4200 4650
Wire Wire Line
	4350 2350 7500 2350
Wire Wire Line
	7500 2350 7500 2250
Wire Wire Line
	7800 2050 7800 1950
Wire Wire Line
	4200 1750 7350 1750
Wire Wire Line
	7350 1750 7350 1650
Wire Wire Line
	4450 2050 7800 2050
$EndSCHEMATC
