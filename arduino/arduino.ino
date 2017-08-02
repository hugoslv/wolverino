#include <Servo.h>

/* WOLVERINO FIRMWARE
 * 
 * Controls an output in real time based on a sensor input.
 * 
 * Uses input A1 (expected to be an FSR sensor) 
 * 
 * Toggles D12 (expected to be a servo) between 15º and 145º
 */

// Stores the value on A1
int input = 0;

// Stores the output to D12
int output = 0;

// Auxiliary variable to control a time-based rejection band
long t = 0;

// Number of points used on the moving average filter
const int npts = 100;

// "Memory" buffer for the moving average filter
int spsbuf[npts];

// "Memory" forward pointer for the moving average filter
int fp = 0;

// "Memory" tail pointer for the moving average filter
int tp = 0;

// Output of the moving average filter
long avg = 0;

Servo myservo;

void setup() {
  // Initialize the serial port (for debugging)
  Serial.begin(9600);
  
  // Set the IOs
  pinMode(A1, INPUT);
  
  myservo.attach(12);
  // Initialize the moving average filter "Memory"
  for (int i = 0; i < npts; i++) spsbuf[i] = 0;
}

void loop() {
  // Read the raw EMG sensor data
  input = analogRead(A1);

  // Compute the envelope
  input -= 360;
  input = abs(input);
  
  // Update the tail pointer to retrive the oldest position on the moving average filter "Memory"
  tp = fp + 1;
  
  // Update the moving average value by adding the most recent reading and removing the oldest
  avg+=input;
  avg-=spsbuf[(tp==npts?0:tp)];
  spsbuf[fp++]=input;

  // Correct the overflow on the forward pointer of the moving average filter memory
  if (fp==npts) fp=0;
    
  // Check the FSR sensor input against an activation threshold (has a time-based rejection band of 1000ms)
  if ((millis() - t) > 1000 && avg < 4000) { 
    t = millis();
    output = 130-output; // Toggle servo angle between 0 and 130
  }

  // Test mode where the output is toggled automatically
  //output = (output==145?15:145); delay(10);

  myservo.write(output+15); // +15 helps prevent the claw from locking on the openings 
  //myservo.write(output);
    
  Serial.println(avg);
}
