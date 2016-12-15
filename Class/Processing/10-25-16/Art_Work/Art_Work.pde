import processing.pdf.*;

void setup() {
  size (600, 600);
  beginRecord(PDF, "output.pdf");
}


void draw() {
  for (int i=0; i<600; i++){
   stroke (random(255), random(255), random(255));
   ellipse (i, i, 10,10);
   //for (int x=0; x<600; x++){
   //ellipse (i, i, 10,10);
  // }
  }
}

void keyPressed() {
  if (key=='s') {
    endRecord();
  }
}