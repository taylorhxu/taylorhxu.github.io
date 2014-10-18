---
layout: post
title: Temperature sensors for medical applications
date: 2014-10-18 22:43:25
disqus: y
share: y
---
This project provides an experimental development on temperature sensors and thermistors for respiration monitoring and body temperature measurement, using both respiratory sensor system and thermometer alarm system. The temperature sensors in use are precision integrated-circuit temperature sensors that output voltage is linearly proportional to Celsius temperature [1] alongside with thermistors that have relatively rapid response time. The purpose of the laboratory test and circuit design presented here were to demonstrate an excellent and accurate performance of the integrated device with
two functioning systems built-in, for specified medical monitoring
purposes.
# Background
The world health report 2006 has estimated there are 57 countries with absolute shortage of healthcare workers. [2] Europe including UK has 16.63 millions doctors nurses and midwives, which has health workers rate of 18.9 per 1000 population. [3] The Health Care Workforce in Europe suggested that there were only 346,537 qualified healthcare workers in the UK, [4] compared to the total population in the United Kingdom of 59.2 million people in 2002. [5]

“If chemical reactions are to continue life-sustaining rates, normal body temperature must be maintained. As body temperature drops below 37 degrees Celsius, metabolic reactions become slower and slower, and finally stop. When body temperature is too high, chemical reactions occur at a frantic pace and body proteins has their characteristic shape and stop functioning. At either extreme, death occurs. The activity of the muscular system generates most body heat.” [6]

Maintenance and measurement of temperature of patients are fundamental and natural requirements of GP surgeries, A&E and in fact, any healthcare organisations. Due to the increasing gap of number ratio between healthcare workers and patients, the development of a medical device that would easily take measurements of body temperature is essential.
The shortage of healthcare workers in the UK makes the development on medical devices that can be used for body temperature measurement in the hospital and other organisations is crucial, as fewer members of staff are available.

The aim of this project is to develop a wearable medical monitoring device using LM35 temperature sensor and designed Nasal Airflow sensor to get instant measurement on body temperature, by combining the thermometer alarm system and the respiration sensor system into one complete circuit, that enables either medical professionals or general public in the hospital routinely monitoring the physiological state of an individual’s health.
## Nasal Airflow Sensor
Nasal Airflow sensors are utilised in clinical practice, traditionally airflow monitoring relied on physical examination and history. However, recently tools and medical equipments have been extensively developed that aid a physician in completing a thorough assessment by measuring factors that are directly or indirectly affecting airflow. Many conditions, whether they are physiological or pathological, can affect breathing. So, measuring airflow can be very important in diagnosing and treating a patient.
## LM35 Temperature Sensor
Temperature sensors are used in many diverse applications, one of them being for the use in medical devices. The main purpose is to measure temperature change with the range that is limited within a minimum temperature of about -
25°c to a maximum of about 200°c.
LM35 temperature sensor converts temperature to electricity by using substances of various physical properties with temperature variation of the sensor. The output voltage of LM35 temperature sensor has a linear relationship with the Celsius temperature. The voltage output is:

Vout_LM35=10mV/°c x T °c        

The LM35 sensor used in this project came in TO-220 packaging. This sensor is sensitive to a small change in temperature, which gives accurate measurements.
## Diode
A diode is a discrete component that allows current to flow in one direction only. It is a polarised component with two leads, called the cathode and the anode. The cathode is normally marked with a silver or coloured band or the symbol '-'.
If the anode is connected to a higher voltage than the cathode, current will flow from anode to cathode. This is called forward bias.
If the diode is put in the circuit back to front, so that the voltage at the cathode is
higher than the voltage at the anode, the diode will not conduct electricity. This is called reverse bias [12].
## Operational Amplifier 
The operational amplifier chip used in this project was TL084; it has 4 channels and 14 pins. [8] The operational amplifier produces an output voltage that is the difference between the two input terminals.
During this project, different channels were used in order to integrate different circuits together.
## Thermistor 
The thermistors used are designed with a semiconductor material, which internally produces a level of resistivity,which is very sensitive and responsive to temperature. Unlike other temperature related devices, the resistance of thermistors decreases as temperature increases. Therefore it is easy to predict the resistance change when the temperature adjusts, known as a Negative Temperature Co-efficient (NTC) thermistor.
# Procedure
## Development of the thermometer alarm system - Development and evaluation of the Alarm circuit for T>37°c
### Theory
When the non-inverting input (V+) was at a higher voltage than the inverting input (V-), the high gain of the op-amp caused the output to go to the highest positive voltage it could output (approx. Vcc+). When the non-inverting input (V+) dropped below the inverting input (V-), the output went to the most negative voltage it could output (approx. Vcc-). The op-amp's output voltage was determined by the supply voltage [13]. Therefore, by setting one of the op-amp inputs to be the voltage from the LM35 sensor and creating a reference voltage for the other input, we compared the two voltages to see if one was greater than or less than the other.

The voltage divider rule is:

Vref = (Vcc+)*R2/ (R1+R2) 
### Experiment
Firstly, the LM35 sensor was tested by supplying the voltage pin of the sensor by
9V from the power supply, connecting the GND pin and getting the voltage read
in the multi-meter from the output of the sensor. The readings were between (25
-28V) which meant it was exactly as same as the room temperature was. Based on that, a reference voltage was set using two resistors and the voltage
divider rule.

Secondly, the sensor was linked to the non-inverting input (+) of channel1; pin number3. The reference voltage was connected to the inverting input (-) of the same channel; pin number2. The buzzer was accompanied with the output of the similar channel at pin number 1.
By using the voltage divider rule, the values of Vref and Vcc+ were set as follow: Vref = 0.37V (The equivalent value to the temperature T using equation 1.1)
Vcc+ = 9 V (The power supply voltage).
R2 was chosen randomly to be 100 Ω
0.37=9*100/ (R1+100) (Using equation 2.1)
0.37(R1+100) =900
R1 = (900 – 37)/0.37 = 2300 Ω.

*When the Vref was measured, it was 381.23 mV. An extra 100 Ω were used, so that R1=2400Ω and the measured Vref = 370.45 mV.*

## Development of the thermometer alarm system - Development and evaluation of the Alarm circuit for T<25°c
### Theory 
When the non-inverting input (V+) was at a higher voltage than the inverting input (V-), the high gain of the op-amp caused the output to go to the highest positive voltage it could output (approx. Vcc+). When the non-inverting input (V+) dropped below the inverting input (V-), the output went to the most negative voltage it can output (approx. Vcc-). The op-amp's output the supply voltage determines voltage [13]. Therefore, by setting one of the op-amp inputs to be the voltage from the LM35 sensor and creating a reference voltage for the other input, two voltages was compared therefore for checking both values were either similar or exactly the same.
### Experiment 
According to the function of the op-amp, the resistors and the sensor were swapped in order to make a precise comparison when the temperature was below 25°c.

First of all, a reference voltage was made using two resistors that were different than those were used for T> 37°c and the voltage divider rule.

Secondly, the sensor was linked to the inverting input (-) of the first op-amp - pin number 9, the two resistors were connected to the non-inverting input (+) of the same op-amp - pin number 10, and the buzzer was accompanied with the two outputs of the two channels – at pin number 1 and pin number 8.
By using voltage divider rule, the values of Vref and Vcc+ were set as follow: Vref = 0.25V (The equivalent value to the temperature T using equation 1.1)
Vcc+ = 9 V (The power supply voltage).
R2 was chosen randomly to be 100 Ω.
0.25 = 9*100/ (R1+100) (Using equation 2.1)
0.25(R1+100) = 900
R1= (900 – 25)/0.25 = 3500Ω

## Development of the thermometer alarm system - Development and evaluation of the Alarm circuit for T<25°c or T>37°c
### Experiment 
In order to combine the two circuits’ measurement together, the LM35 output was split into two: one was connected to the non-inverting input (+) of the first circuit, which was V > 370mV at pin number 3 and the other was linked to the inverting input (-) of the second circuit which V< 250mV at pin number 10.

After that, two diodes were linked to the output of the two op-amps. The diode passed the voltage in one way – from the positive to the negative. Therefore, only the positive output from the op-amp was allowed to reach the buzzer. When T >
37°c the LM35 (non-inverted +) was higher than the inverted thus the op-amp output was positive, the diodes passed the positive voltage to the buzzer. Meanwhile, when T<25°c the LM35 (inverted -) was lower than the non-inverted thus the op-amp output was positive, the diode passed the positive voltage to the buzzer.

## Development of the Respiration Sensor System
### Design Consideration of Nasal Airflow Sensor
The project was to design a very simple nasal airflow sensor, using limited components. Traditional thermistors and thermocouples used to detect a patients airflow where composed of prongs and probes which were directly inserted into the nostrils. This designed element can be very uncomfortable and irritating for the patient, therefore a nasal airflow sensor was developed during the group project week, as discussed among the group, the final product was comfortable to wear as well as producing an accurate reading.

A suitable and cost effective design was carried out carefully, which is suitable for pediatric patients as well as adults. Considerations where made regarding how comfortable the devise was to wear, and how well it was with staying in place – so that constant readjustments where not needed, and a design where the airflow sensor could be taken on and off patients, with minimum ease, was wanted and finally produced and developed.

### Development of Sensing Elements
Thermistors are the sensing element of the airflow-monitoring device. Thermistors are inexpensive, readily available and easy to use and adaptable.

The Airflow sensor requires two thermistors, one for each nostril. Because each thermistor was connected to extension wires the two legs of the thermistor needed to be isolated from one another, to achieve this shrink-wrap was used. Shrink wrap or also known as shrink film, is a special material made up of polymer or plastic film, which when applied with heat, it shrinks tightly over whatever it is covering.

A hot air gun is a power tool useful for many types of repairs; the hot air gun was used, specifically for applying heat to the shrinking tubes, but they can also be used for soldering, etc. A major advantage of using a heat gun as opposed to other heat producing tools is that they’re flameless. Using flames could potentially damage the surface you’re trying to heat and could even cause a fire hazard, so the source of heat from the hot air gun is much safer. However each group was only allowed to use the heat gun under supervision by a lab technician. Usually this tool reaches temperatures of between 100°C and 550°C. Evenly spread heat all over the wires to have an even shrinkage was ensured.

A small segment of plastic tubing was used to attach both thermistors together under the nose, so that the ends of each thermistor stuck out slightly and rested directly below each nostril.  Each thermistor was carefully measured and it fitted properly and where tightly secured by the plastic tubing.  Once placed inside the extensions where bent at 45 degree angles and then hooped around ears. Comparisons for the placement of the thermistors where made between allmembers of the group, making the device suitable for all group members to wear. Due to the flexible nature of the plastic tube, the thermistors can be adjusted to fit any patient, which would eliminate any discomfort compared to other devices that would be ill fitted.

Incorporating a pair of glasses to the design means that the thermistors can be worn and taken off with the same level of ease as just wearing a pair of glasses. There is no problem with wires or chance of the wires being tangled causing difficulty for the patient to manage. Instead of using a mask, which could affect the airway reading by not allowing sufficient air exchange, the glasses leave the face free which results in a more accurate results as well as also allowing the patient to communicate freely.
## Development and Evaluation of the Wheatstone bridge
### Theory
The thermistor of the Nasal Airflow changed resistance with the difference in temperature between inhaled and exhaled air. The Wheatstone bridge converted the change in resistance into a change in voltage [13].

If the 4 resistors of the Wheatstone bridge are equal, the output voltage is Zero. For the resistors, we used R1=10 KΩ, R2 = 10 KΩ and at 25°c, the thermistor of the nasal airflow should be RT1 = 10 KΩ and RT2 = 10 KΩ.

V1 = (Vs) RT1/ (R1 + RT1)                                                                                V2 = (Vs) RT2/ (R2 + RT2)                                                                                
Vout = V1 – V2 = Vs [RT1/ (R1 + RT1)  – (Vs)* RT2/ (R2 + RT2)]                
### Experiment 
Firstly, the two resistances of the two Nasal Airflow sensors were checked at the room temperature which was 25°c to 27°c using the ohmmeter. RT1 = 9.5 KΩ and RT2 = 9.8 KΩ

Secondly, the circuit was supplied by 9V. Using equations (2.2, 2.3, 2.4) the theoretical values of V1, V2 and Vout were as follow:

V1= (9)*[9.5/ (10+9.5)]= V1 = 4.52 V V2= (9)*[9.8/ (10+9.8)] = V2 = 4.45 V
Vout = V1- V2 = 4.52V- 4.45V = Vout = 0.07 V

However, the measured Vout was between 0.032V to 0.048V, which was due to that room temperature varied during the measurement and the resistances uncertainty (± 5%).

## Development and Evaluation of the Differential Amplifier
### Theory
The differential amplifier was used to amplify the measured Vout from the Wheatstone bridge-which was very small- so that the Vout signal would have high amplitude. It was configured using a selection of resistors and the operational amplifier (Op-amp)[13].

The amplified voltage depended on the V1 and V2 from the Wheatstone bridge, R1
and R2 as shown in the next equation:

Vout = (V2 – V1) R2/R1                    
### Experiment 
Firstly, four resistors were chosen to build the above differential amplifier to amplify the signal by 10 as shown:
R2= 10KΩ,
Vout= 0.48V and Vin = 0.048V
0.48= 0.048*10/R1
R1= 1KΩ

However, amplified signal had low amplitude, so it was amplified again by 390 in order to get a clear signal with high amplitude:

R2=3.9KΩ, Vin = 0.048V and Vout= 18.72 V
4.8 = 0.048*10/ R1
R1= 10 Ω
## Development and Evaluation of the Filter
### Filter                                                                                                                 
The respiration signal lies between frequency ranges of 0.1 Hz to 10 Hz. Therefore, an RC low-pass filter was designed to remove the unwanted noise of the output of the differential amplifier signal that was above 10 Hz [13].
The cut-off frequency that we wanted the filter to pass was calculated from the
next equation:

ƒc = 1/2πRC                                                                                                         

It consisted of a resistor of 68 KΩ and a capacitor of 220 nF.  

The output of the circuit was observed when the person breathed normally and it was one and half complete cycles in five seconds which was calculated as below:

Breath rate: (1.5/5)*60 = 18 breathe per minute
Frequency: 1/3 = 0.333 Hz
#  Results 
## The results for the thermometer Alarm System
1.   The alarm buzzed when the temperature exceeded 37°c and the exact voltage reading from the voltmeter was 370.45 mV.
2.   The alarm buzzed when the temperature was below 25°c and the exact
voltage reading from the voltmeter was 249.23 mV.
3.   The two circuits worked simultaneously - when T > 37°c or T<25°c, the final circuit had one sensor, one buzzer and two op-amps with a mechanism that allowed both circuits to work as a one system.
## The results for the Respiration Sensor System
1.   A member of the group volunteered to put the nasal airflow sensors on.
When the person inhaled, the amplitude of the signal that was shown on the oscilloscope was low. Meanwhile, the exhalation showed a high amplitude and the frequency varied with the respiration rate.

2.   The filter reduced the amount of noise that contaminated the output signal by passing the low frequency signals and attenuating signals with frequencies higher than the cut-off frequency (10 Hz).

3.   By blowing on the thermistors of the Nasal Airflow sensors, the temperature increased and thus, the voltage readings also increased. The change in the signal was also shown on the oscilloscope.
# Conclusion
With the correct calculation and the schematic of the complete thermometer alarming system, there were also some issues occurred. As mentioned earlier,the actual values of temperature derived from voltages were a little bit off the theoretical values: as 249.23mV for <25°c has a percentage error of -0.308%, and 370.45mV has a percentage error of 0.122%. These percentage errors were really small and less than 1% that can be considered as excellent results. The possible reason that occurred was due to there wasn’t exact value of resistors in the lab, therefore, similar value was used, and this caused some uncertainly during the experimental measurement.
## Reference
1. LM35 Precision Centigrade Temperature Sensors, TEXAS INSTRUMENTS.
2. The World Health Report 2006: Working Together For Health. Geneva: WHO;2006.
3. Shortage of Healthcare Workers in Developing Countries - Africa, Ethnicity & Disease, Volume 19, Spring 2009.
4. Edited by Bernd Rechel, Carl-Ardy Dubois, Martin McKee, The health Care workforce in Europe, WHO; 2006.
5. New United Kingdom Population Projections, Government Actuary’s Department, 2003.
6. Elaine N. Marieb, Katja Hoehn, P8, human anatomy & physiology, ninth edition, Pearson.
7. [Working principle](http://sainsmart.com/wiki/index.php/LM35_temperature_sensor)
8. [Datasheet of TL084](http://www.ti.com/product/tl084)
9. http://www.thebackshed.com/windmill/articles/TL084_Controller/TL084.gif
10. NTC thermistor, NTC thermistors datasheet.
11. P.231, S. P. Bali, Linear Integrated Circuits, Tata McGraw-Hill Education,2008. 
12. [BBC electronics](http://www.bbc.co.uk/schools/gcsebitesize/design/electronics/componentsrev.shtml)
13. Document 1: Project Background and Outline Sheet


                                                                        
