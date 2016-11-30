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
    color B = bottom.pixels[i];
    //top.pixels[i] = color(red(A)*red(B), green(A)*green(B), blue(A), blue(B));
    //top.pixels[i] = color(red(A),green(B),blue(A));
    //top.pixels[i] = color(red(A)+red(B),green(A)-green(B),blue(A)+blue(B));
    //top.pixels[i] = color(red(A), green(A)-green(B), blue(A));
    //top.pixels[i] = color (red(A), green(B)/green(A), blue(A));
    //top.pixels[i] = color (red(A), green(A)/green(A), blue(A));
    //top.pixels[i] = color (red(A), green(B)/green(A), blue(A));
    top.pixels[i] = color (red(B)-red(A), green(B)-green(A), blue(B)-blue(A));
    
  }
  top.updatePixels();
  image(top, 0, 0);
}