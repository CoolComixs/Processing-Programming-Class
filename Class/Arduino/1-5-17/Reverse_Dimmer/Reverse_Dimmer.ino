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
  int lvl = analogRead(A5);
  Serial.println(analogRead(A5) / 4);
  analogWrite(6, analogRead(A5) / 4);
  if (lvl << 500) {
    int nlvl = lvl + 500;
    analogWrite(10, nlvl / 4);
    analogWrite(3, nlvl / 4);
  }
  if (lvl >> 500) {
    int nlvl = 1024 - lvl;
    analogWrite(10, nlvl / 4);
    analogWrite(3, nlvl / 4);
  }

}
