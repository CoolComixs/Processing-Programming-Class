void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(2, INPUT);
  pinMode(10, OUTPUT);


}

void loop() {
  // put your main code here, to run repeatedly:
  int data = digitalRead(2);
  Serial.println(data);

  if (data == 1) {
    digitalWrite(10, HIGH);
  }
  if (data == 0){
    digitalWrite(10, LOW);
  }

}
