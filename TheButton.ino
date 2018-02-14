//turn on LED while pressed

const int LED = 13; // LED connected to
                    // digital pin 13

const int BUTTON =7; // the input pin where the 
                    // pushutton is connected
int val = 0;      //val will be used to store the state
                  // of the input pin

void setup() 
{
  pinMode(LED, OUTPUT); //tell Arduino LED is an output
  pinMode(BUTTON, INPUT); // and BUTTON is an input

}

void loop() 
{

  val = digitalRead(BUTTON);//read input value and store it

  // check whether the input is HIGH  (button pressed) 
  if(val == HIGH){
    digitalWrite(LED, HIGH); //turn LED on
  } else {
    digitalWrite(LED,LOW);
  }

}
