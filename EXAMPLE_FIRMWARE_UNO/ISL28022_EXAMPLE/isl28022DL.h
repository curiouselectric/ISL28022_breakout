#pragma once

#include <Wire.h>
#include <Arduino.h>

#define SHUNTVOLTREG  0x01  
#define BUSVOLTREG    0x02
#define CURRENTREG    0x04
#define POWERREG      0x03

class power_isl28022 {
  public:
    void begin(int address_ic);
    float readRegister(int address_ic, int reg);

};

// ****** This is for the ISL28022 instances *********************
extern power_isl28022 power_monitor;
