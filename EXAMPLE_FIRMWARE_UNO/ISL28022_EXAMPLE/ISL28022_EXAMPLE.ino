
/*
    Example code for Arduino Uno to talk to ISL28022 Power Monitor IC
    Details and PCB design and instructions here
    https://github.com/curiouselectric/ISL28022_breakout  
*/

#include <Arduino.h>
#include <Wire.h>
#include "isl28022DL.h"

// The baud rate for serial communications
#define SERIAL_BAUD       9600

// This information is for the ISL28022 unit:
#define ADDRESS_ISL0    0b1000000  // This is the device address for A0 = GND A1 = GND
//#define ADDRESS_ISL1    0b1000001  // This is the device address for A0 = VCC A1 = GND
//#define ADDRESS_ISL2    0b1000010  // This is the device address for A0 = SDA A1 = GND

float dataValue;

void setup()
{
  // initialize serial communication:
  Serial.begin(9600);
  // Start up the ISL28022 Power monitor ICs
  power_monitor.begin(ADDRESS_ISL0);
}

void loop()
{
  dataValue = power_monitor.readRegister(ADDRESS_ISL0, SHUNTVOLTREG); 
  dataValue = power_monitor.readRegister(ADDRESS_ISL0, BUSVOLTREG);
  dataValue = power_monitor.readRegister(ADDRESS_ISL0, CURRENTREG);
  dataValue = power_monitor.readRegister(ADDRESS_ISL0, POWERREG);
  Serial.println();
  delay(1000);  // Check every second!
}
