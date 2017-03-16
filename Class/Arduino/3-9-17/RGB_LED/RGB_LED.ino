int redPin = 11;
int greenPin = 10;
int bluePin = 9;
int potPin = 5;
 
void setup()
{
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
  Serial.begin(9600);
  
}
 
void loop()
{
  int color = analogRead(A5);
  Serial.println(analogRead(A5) / 4);
//  setColor(255, 0, 0);  // red
//  delay(1000);
//  setColor(0, 255, 0);  // green
//  delay(1000);
//  setColor(0, 0, 255);  // blue
//  delay(1000);
//  setColor(255, 255, 0);  // yellow
//  delay(1000);  
//  setColor(80, 0, 80);  // purple
//  delay(1000);
//  setColor(0, 255, 255);  // aqua
//  delay(1000);
}
 
void setColor(int red, int green, int blue)
{
  #ifdef COMMON_ANODE
    red = 255 - red;
    green = 255 - green;
    blue = 255 - blue;
  #endif
  analogWrite(redPin, red);
  analogWrite(greenPin, green);
  analogWrite(bluePin, blue);  
}
