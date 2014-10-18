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

### Background

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

!(https://github.com/taylorhxu/taylorhxu.github.io/blob/master/_assets/sensors/sensors-1.png)
                                                                        
