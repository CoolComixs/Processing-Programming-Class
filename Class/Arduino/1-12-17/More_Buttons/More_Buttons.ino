void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  //Serial.begin(19200);
  pinMode(6, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(2, INPUT);
  pinMode(7, INPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
  int data1 = digitalRead(2);
  Serial.println(data1);
  int data2 = digitalRead(7);
  Serial.println(data2);

  boolean LRedOn = false;
  boolean RRedOn = true;

  if (data2 == 1 && RRedOn == true) {
    digitalWrite (4, LOW);
    digitalWrite (10, HIGH);
    digitalWrite (3, HIGH);
    digitalWrite (6, LOW);
    RRedOn = false;
    LRedOn = true;
  }
  if (data1 == 1 && LRedOn == true) {
    digitalWrite (4, HIGH);
    digitalWrite (10, LOW);
    digitalWrite (3, LOW);
    digitalWrite (6, HIGH);
    LRedOn = false;
    RRedOn = true;
  }


  //  if (data1 == 1) {
  //    digitalWrite (10, HIGH);
  //    digitalWrite (3, HIGH);
  //    digitalWrite (6, LOW);
  //    digitalWrite (4, LOW);
  //  }
  //  if (data2 == 1) {
  //    digitalWrite (10, LOW);
  //    digitalWrite (3, LOW);
  //    digitalWrite (6, HIGH);
  //    digitalWrite (4, HIGH);
  //  }

}
