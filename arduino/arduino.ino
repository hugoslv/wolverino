/* WOLVERINO FIRMWARE
 * 
 * Controls an output in real time based on a sensor input, with two (user-selectable) operation modes: 
 * 
 * 1) TOGGLE (default)
 * 2) PROPORTIONAL
 * 
 * The mode is selected based on the input of A0 and displayed as a 0 or 255 output on D5
 * 
 * In TOGGLE mode the code compares the input on A1 (expected to be an EMG sensor) to a threshold and toggles D9 (expected to be a servo) between 0 and 255
 * 
 * In PROPORTIONAL mode the code applies a moving average filter to the input on A1 and provides an output bounded to 0-255 on D9
 */

// OUTPUTS TO BE CONTROLLED
// D5: Mode indicator
// D9: Servo output
int out[] = {5, 9};
int nout = (sizeof(out)/sizeof(int));

// INPUTS TO THE SYSTEM
// A0: Mode selector
// A1: EMG sensor
int in[] = {A0, A1};
int nin = (sizeof(in)/sizeof(int));

// Auxiliary variable for MODE 1
float state = 0;

// Stores the value on A1
int input = 0;

// Stores the output to D9
int output = 0;

// Auxiliary variable to control a time-based rejection band
long t = 0;

// Number of points used on the moving average filter
const int npts =1000;

// "Memory" buffer for the moving average filter
int spsbuf[npts];

// "Memory" forward pointer for the moving average filter
int fp = 0;

// "Memory" tail pointer for the moving average filter
int tp = 0;

// Output of the moving average filter
long avg = 0;

// Current mode of operation
int mode = 0;

void setup() {
  // Initialize the serial port (for debugging)
  Serial.begin(9600);

  // Set the IOs
  for (int i=0; i<nout; i++) pinMode(out[i], OUTPUT);
  for (int i=0; i<nin; i++) pinMode(in[i], INPUT);

  // Initialize the moving average filter "Memory"
  for (int i=0; i<npts; i++) spsbuf[i]=0;
}

void loop() {
  // Read the raw EMG sensor data
  input = analogRead(A1);

  // Check mode selector
  // if ((millis()-t) > 1000 && analogRead(A0) > 25) mode = 255 - mode;
  if (analogRead(A0) > 25) mode = 255;
  else mode = 0;
  
  //*/
  // If in PROPORTIONAL mode
  if (mode==255) {
    // Remove the EMG signal offset
    state=abs(input-512);

    // Update the tail pointer to retrive the oldest position on the moving average filter "Memory"
    tp=fp+1;

    // Update the moving average value by adding the most recent reading and removing the oldest
    avg+=state;
    avg-=spsbuf[(tp==npts?0:tp)];
    spsbuf[fp++]=state;

    // Correct the overflow on the forward pointer of the moving average filter memory
    if (fp==npts) fp=0;

    // Bind the output to 0-255
    output=(avg-5000)/40000.0*255;//-5000)/30000*255;
    if (output<0) output=0;
    if (output>255) output=255;
  }
  //*
  // If in ON/OFF mode
  if (mode==0) {
    // Check the EMG sensor input against an activation threshold (has a time-based rejection band of 1000ms)
    if ((millis()-t) > 1000 && input > 800) {
      t=millis();
      output = 255 - output;
    }
  }
  //*/
  
  // Test mode where the output is toggled automatically
  //output = (output==255?0:255); delay(1000);

  // Show the current mode on D5
  analogWrite(out[0], mode);

  // Control the output on D9
  analogWrite(out[1], output);

  // Print the output to the serial port (for debugging)
  Serial.println(output);
}
