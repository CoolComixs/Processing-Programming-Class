PImage lvl1;

int x= 273;
int y= 340;

void setup() {
  size (542, 600);
  lvl1 = loadImage ("lvl1.png");
  background(#000000);
}

void draw() {
  image(lvl1, 0, 0);
  fill(#EAE00C);
  ellipse(x, y, 25, 25);

  if (keyPressed) {
    if (key == 'w') {
      y=y-2;
    }
    if (key == 'a') {
      x=x-2;
    }
    if (key == 's') {
      y=y+2;
    }
    if (key == 'd') {
      x=x+2;
    }
  }

  println(x, y);

  //if (x==541) {
  //  x=9;
  //}
  //if (x==9) {
  //  x=541;
  //}
}