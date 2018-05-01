int potPin= A0;  //potPin pin A0
int LEDPin= 9;  // LEDPin pin 9
int readValue;  //this variable reads Potentiometer
int writeValue; //this variable for writing to LED
 
void setup() {
  pinMode(potPin, INPUT);  //input
  pinMode(LEDPin, OUTPUT); //OUTPUT
  Serial.begin(9600);      // turn ON Serial Port
}
 
void loop() {
  
 readValue = analogRead(potPin);  //Read the voltage on the Potentiometer
 writeValue = (255./1023.) * readValue; //Write Value for LED
 analogWrite(LEDPin, writeValue);      //Write to the LED
 Serial.print("You are writing a value of ");  //debugging
 Serial.println(writeValue);
 
}
