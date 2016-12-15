void setup() {
  size(600, 600);
}

void draw() {
  println(key);
}

void keyPressed() {
  if (key=='w') {
    fill(#FFFFFF);
    float r1 = random(0, 600);
    float r2 = random(0, 600);
    rect(r1, r2, 300, 300);
    float rr1 = r1+25;
    float rr2 = r2+25;
    fill(#DE1414);
    rect(rr1, rr2, 250, 250);
  }
  float r1 = random(0, 600);
  float r2 = random(0, 600);
  if (key==' ') {
    fill(255);
    ellipse(r1, r2, 300, 300);
    fill(#DE1414);
    ellipse(r1, r2, 275, 275);
    fill(#098301);
    ellipse(r1, r2, 250, 250);
    fill(#EF02F0);
    ellipse(r1, r2, 225, 225);
    fill(#0253F0);
    ellipse(r1, r2, 200, 200);
    fill(#F0D402);
    ellipse(r1, r2, 175, 175);
    fill(#F04202);
    ellipse(r1, r2, 150, 150);
    fill(#02F0DE);
    ellipse(r1, r2, 125, 125);
    fill(#F00281);
    ellipse(r1, r2, 100, 100);
    fill(#72A02F);
    ellipse(r1, r2, 75, 75);
    fill(#2F79A0);
    ellipse(r1, r2, 50, 50);
    fill(#000000);
    ellipse(r1, r2, 25, 25);
  }
}

void mousePressed() {
  background(255);
  /*  
   fill(#FFFFFF);
   rect(mouseX, mouseY, 300, 300);
   fill(#DE1414);
   rect((mouseX+25), (mouseY+25), 250, 250);
   */
}