PImage top, bottom;
void setup() {
  colorMode(RGB, 1.0);
  size(600, 325);
  top = loadImage("top.jpg");
  bottom = loadImage("bottom.jpg");
  noLoop();
}

void draw() {
  top.loadPixels();
  for (int i=0; i<top.pixels.length; i++) {  
    color A = top.pixels[i];
    top.pixels[i] = color(green(A)*1.2 - max(red(A), blue(A)));
  }
  top.updatePixels();
  image(top, 0, 0);
}