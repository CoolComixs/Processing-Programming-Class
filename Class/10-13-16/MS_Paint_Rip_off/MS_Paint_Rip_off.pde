import processing.pdf.*;
import javax.swing.*; 
int lineThick = 1;

/*int userin;
 int userin2;
 int userin3;
 */
void setup() {
  size (600, 600);
  beginRecord(PDF, "output.pdf");
  background(255);
}

void draw() {
  strokeWeight(lineThick);
}

void keyPressed() {
  /* if (key=='r') {
   stroke(255, 0, 0);
   } */
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
      JOptionPane.showMessageDialog(null, "Line cannot get any smaller");
    }
  }
  if (key=='c') {
    background(#ffffff);
  }
  if (key=='e') {
    stroke(#ffffff);
  }
  if (key=='s') {
    endRecord();
    //save("output.png");
    JOptionPane.showMessageDialog(null, "Your image has been saved!");
  }

  if (key==' ') {
    Float userin = new Float(JOptionPane.showInputDialog(null, "Input A Value Between 0 & 255 (RGB Color)"));
    Float userin2 = new Float(JOptionPane.showInputDialog(null, "Input A Value Between 0 & 255 (RGB Color)"));
    Float userin3 = new Float(JOptionPane.showInputDialog(null, "Input A Value Between 0 & 255 (RGB Color)"));
    JOptionPane.showMessageDialog(null, "Your line color is " + userin + ", " + userin2 + ", " + userin3);
    stroke(userin, userin2, userin3);
  }

  if (key=='/') {
    Float userin = new Float(JOptionPane.showInputDialog(null, "Input A Value Between 0 & 255 (RGB Color)"));
    Float userin2 = new Float(JOptionPane.showInputDialog(null, "Input A Value Between 0 & 255 (RGB Color)"));
    Float userin3 = new Float(JOptionPane.showInputDialog(null, "Input A Value Between 0 & 255 (RGB Color)"));
    JOptionPane.showMessageDialog(null, "Your Background color is " + userin + ", " + userin2 + ", " + userin3);
    background(userin, userin2, userin3);
  }

  if (key=='r') {
    float rand1 = random(0, 255); 
    float rand2 = random(0, 255); 
    float rand3 = random(0, 255); 
    Float userin = new Float(JOptionPane.showInputDialog(null, "(1) Background or (2) Line"));
    if (userin==1) {
      background(rand1, rand2, rand3);
    }
    if (userin==2) {
      stroke(rand1, rand2, rand3);
    } else {
      stroke(0, 0, 0);
    }
  }

  if (key=='S') {
    float userin = new Float(JOptionPane.showInputDialog(null, "(1) Rectangle or (2) Ellipse"));
    if (userin==1) {
      float userin2 = new Float(JOptionPane.showInputDialog(null, "Length"));
      float userin3 = new Float(JOptionPane.showInputDialog(null, "Height"));
      float userin4 = new Float(JOptionPane.showInputDialog(null, "(1) Random Color or (2) Pick Color"));
      if (userin4==1) {
        float rand1 = random(0, 255); 
        float rand2 = random(0, 255); 
        float rand3 = random(0, 255);
        fill(rand1, rand2, rand3);
      } else {
        float fillcol1 = new Float(JOptionPane.showInputDialog(null, "Fill Color Between 0 & 255 (RGB Color)"));
        float fillcol2 = new Float(JOptionPane.showInputDialog(null, "Fill Color Between 0 & 255 (RGB Color)"));
        float fillcol3 = new Float(JOptionPane.showInputDialog(null, "Fill Color Between 0 & 255 (RGB Color)"));
        fill(fillcol1, fillcol2, fillcol3);
      }
      rect(pmouseX, pmouseY, userin2, userin3);
    }
    if (userin==2) {
      float userin2 = new Float(JOptionPane.showInputDialog(null, "Length"));
      float userin3 = new Float(JOptionPane.showInputDialog(null, "Height"));
      float userin4 = new Float(JOptionPane.showInputDialog(null, "(1) Random Color or (2) Pick Color"));
      if (userin4==1) {
        float rand1 = random(0, 255); 
        float rand2 = random(0, 255); 
        float rand3 = random(0, 255);
        fill(rand1, rand2, rand3);
      } else {
        float fillcol1 = new Float(JOptionPane.showInputDialog(null, "Fill Color Between 0 & 255 (RGB Color)"));
        float fillcol2 = new Float(JOptionPane.showInputDialog(null, "Fill Color Between 0 & 255 (RGB Color)"));
        float fillcol3 = new Float(JOptionPane.showInputDialog(null, "Fill Color Between 0 & 255 (RGB Color)"));
        fill(fillcol1, fillcol2, fillcol3);
      }
      ellipse(pmouseX, pmouseY, userin2, userin3);
    }
  }
}

void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY);
}