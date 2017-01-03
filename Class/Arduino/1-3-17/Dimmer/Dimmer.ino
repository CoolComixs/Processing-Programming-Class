void setup() {
  // put your setup code here, to run once:
  pinMode(3, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(10, OUTPUT);
  Serial.begin(9600);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  //digitalWrite(3, HIGH);
  Serial.println(analogRead(A5)/4);
  analogWrite(3, analogRead(A5)/4);
  analogWrite(6, analogRead(A5)/4);
  analogWrite(10, analogRead(A5)/4);
}
