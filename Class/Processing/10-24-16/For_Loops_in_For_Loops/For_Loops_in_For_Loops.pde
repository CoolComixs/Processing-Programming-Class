void setup() {
  size(600, 600);
  background(0);
  //noLoop();
}

void draw() {
  

  for (int y=10; y<height; y+=20) {

    for (int x=0; x<width; x+=20) {
      stroke(0);
      fill(random(255), random(255), random(255), random(255));
      //fill(x/3,2/y,x);
      ellipse(x, y, mouseX, mouseY);
      ellipse(x, y, mouseY, mouseX);
      println("X: ", mouseX, "Y: ", mouseY);
      //stroke(random(255), random(255), random(255));
      //line(0, 0, x+10, y);
    }
  }
 
  
}