# Real Time Clock

# Introduction:

Real Time Clock (RTC) is an important device for good relation with world. The first application is to display the real time on 24h basis and it can be easily converted to accommodate a 12h clock as well. The RTC can display in hours, minutes and seconds. This design is more involved in the traffic controller design. The display system needs to be populated with all the six, seven-segment LEDs for the real time clock applications. The main applications of RTC are

* Real Time Display

* Stop Watch

* Industrial timer

* Photographic timer  

* Medical Application using three alarm setting

# Design Process of RTC:

The basic digital clock contained hours, minutes and seconds. Each one has MSB and LSB.

![pic_1](https://user-images.githubusercontent.com/65547096/180937520-c15c3a3f-a3cd-4b22-87f8-aecc505ad5d1.PNG)

The above seven segments are illustrated the "00-00-00" values of hours, HRM (hours of MSB value) and HRL (Hours of LSB value). Next will declared minutes as MIN_M and MIN L. The seconds are declared as SEC M and SEC_L.

The basic digital block contain two designs,

* Counter

* Seven Segmentation

These are the main building blocks of digital clock. Counter will count the number in decimal as 23:59:59. This is the 24h clock operation and it can easily convert to accommodate a 12h clock.

![pic_2](https://user-images.githubusercontent.com/65547096/180937633-37e9ffe0-f7e5-4299-a652-884ef20e09a1.PNG)

The basic counter is count the hours, minutes and seconds and set as 00:00:00 when it will reach

23:59:59

![pic_3](https://user-images.githubusercontent.com/65547096/180937762-0251c5a9-1621-46ad-8989-8b29f3a751f6.PNG)

