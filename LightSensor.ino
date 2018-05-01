int LED =13 ; // the pin for the LED
int brightness =0;
int fadeAmount =5;


void setup() {
pinMode (LED,OUTPUT); // LED is as an OUTPUT

}

void loop() {

analogWrite (LED, brightness);

brightness = brightness + fadeAmount;

if (brightness <= 0 || brightness >= 255); {

fadeAmount = -fadeAmount;
}
 

delay(30); //stop the program for some time


}
