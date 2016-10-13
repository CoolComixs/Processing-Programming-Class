int lineThick = 1;
import javax.swing.*; 
int userin;
int userin2;
int userin3;

void setup() {
  size (600, 600);
  background(255);
}

void draw() {
  strokeWeight(lineThick);
}

void keyPressed() {
  if (key=='r') {
    stroke(255, 0, 0);
  }
  if (key=='b') {
    stroke(0, 0, 255);
  }
  if (key=='t') {
    lineThick = lineThick+1;
    System.out.println("Thickness increased to " + lineThick);
  }
  if (key=='n') {
    if (lineThick>1) {
      lineThick = lineThick-1;
      System.out.println("Thickness descressed to " + lineThick);
    } else {
      System.out.println("Line cannot get any smaller.");
    }
  }
  if (key=='c') {
    background(#ffffff);
  }
  if (key=='e') {
    stroke(#ffffff);
  }
  if (key=='s') {
    save("output.png");
  }

  if (key==' ') {
    Float userin = new Float(JOptionPane.showInputDialog(null, "Input A Value Between 0 & 255 (RGB Color)"));
    Float userin2 = new Float(JOptionPane.showInputDialog(null, "Input A Value Between 0 & 255 (RGB Color)"));
    Float userin3 = new Float(JOptionPane.showInputDialog(null, "Input A Value Between 0 & 255 (RGB Color)"));
    stroke(userin, userin2, userin3);
  }
}

void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY);
}