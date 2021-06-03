#include "isl28022DL.h"

void power_isl28022::begin(int _address)
{
  // Set up ISL28022 Power Monitor IC
  // Test the ISL28022
  Wire.begin();  // Join the bus as Master
  delay(20);  // Short settling delay
  // Reset the Configuration Register

  Serial.print("Start: ");
  Serial.println(_address);

  Wire.beginTransmission(_address);  // Start write to address 0b1000000
  Wire.write(0x00);    // Write to the calibration register

  // Set up everything:
  // RST/BRNG1/BRNG0/PG1/PG0/BADC3/BADC2/BADC1/BADC0/SADC3/SADC2/SADC1/SADC0/MODE2/MODE1/MODE0
  // Set it to:
  // 0b1000000000000000
  // Perform a system reset:
  Wire.write (0b10000000);
  Wire.write (0b00000000);
  Wire.endTransmission();

  // Set up the Configuration Register
  Wire.beginTransmission(_address);  // Start write to address 0b1000000
  Wire.write(0x00);    // Write to the calibration register

  // Set up everything:
  // RST/BRNG1/BRNG0/PG1/PG0/BADC3/BADC2/BADC1/BADC0/SADC3/SADC2/SADC1/SADC0/MODE2/MODE1/MODE0
  // Set it to:
  // 0b 0 11 11 0011 0011 111
  Wire.write (0b01111001);
  Wire.write (0b10011111);
  Wire.endTransmission();

  // Set up the Calibration Register
  // This allows the Power and Current registers to be used
  Wire.beginTransmission(_address);  // Start write to address 0b1000000
  Wire.write(0x05);    // Write to the calibration register

  // OLD values were:
  // 4474 = 117A in HEX
  // Binary: 0001 0001 0111 1010

  // NEW value is:
  // 5mOhm Shunt with 320mV range
  // Calibration register needs to be set to 4194 (dec) = 1062 (hex)
  Wire.write (0x10);
  Wire.write (0x62);
  Wire.endTransmission();
}

// Read data from a specified register and apecified IC address:
float power_isl28022::readRegister(int _address, int _reg)
{
  // This subroutine reads data from device with I2C address ADDRESS
  // It reads the data from the device register ISL28022register
  byte firstByte = 0;
  byte secondByte = 0;
  int16_t valueInt16;
  float  valueFloat;

  Wire.beginTransmission(_address);  // Start write to address 0b1000000
  Wire.write(_reg);     // Read the Bus Voltage register
  Wire.endTransmission();
  Wire.requestFrom(_address, 2);    // Read two bytes of data

  while (!Wire.available())          // Wait until there is data returned
  {
  }
  firstByte = Wire.read();          // Read and store the data
  secondByte = Wire.read();

  if (_reg == SHUNTVOLTREG)
  {
    // ****THIS DEPENDS UPON THE SADC BITS*******
    // ****RANGE = 11 (full scale up to +/-320mV)
    Serial.print(F("SV: "));
    // The bus voltage is a 15 bit value which needs to be converter.
    // Bit 16 is a sign bit (2's complement?)
    // Need to add them together, with the correct weighting factor (256)
    valueInt16 = firstByte * 256 + secondByte; // Convert to a value
    // Each bit is (320mV / 2^15)
    // So value * 0.00001V = shunt voltage
    // This is too small, so keep number in milli Volts
    valueFloat = ((valueInt16 * 320.0) / 32768.0);
  }

  else if (_reg == BUSVOLTREG)
  {
    Serial.print(F("V: "));
    // ****THIS DEPENDS UPON THE RANGE BITS*******
    // ****RANGE = 11 (up to 60V)
    // Need to add them together, with the correct weighting factor (256)
    valueInt16 = firstByte * 256 + secondByte; // Convert to a value
    valueInt16 = valueInt16 >> 2; // Shift the value across by 2 (14 bit number)

    // 60V = max bus range This is 14 bit number
    // Each LSB is 4mV so multiply up
    valueFloat = valueInt16 * 0.004;
  }
  else if (_reg == POWERREG)
  {
    // Only has meaning if calibration register (0x05) is programmed.
    valueInt16 = firstByte * 256 + secondByte; // Convert to a value

    Serial.print(F("P: "));
    // From ISL28022 datasheet
    // Actual Power = reading * Power LSB * 5000 * 2
    // Power LSB = Current LSB x Voltage LSB
    // Power LSB = 1.953125 mA x 4 mV = 7.8125 uW per LSB 
    // 1 LSB = 7.8125uW
    valueFloat = (valueInt16 * (7.8125) * 5000.0 * 2.0) / 1000000.0;
  }
  else if (_reg == CURRENTREG)
  {
    Serial.print(F("I: "));
    // Only has meaning if calibration register (0x05) is programmed.
    valueInt16 = firstByte * 256 + secondByte; // Convert to a value
    // From ISL28022 datasheet
    // Actual current = ((reading / 2^15) * Max Shunt Voltage) / Shunt resistance
    valueFloat = ((valueInt16 / 32768.0) * 320.0) / 5.0 ;
  }
  Serial.print(valueFloat, 2);
  Serial.print(" ");

  return valueFloat;
}
