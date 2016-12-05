PImage toporig, top, top2, top3, top4, top5, bottom, bottom2;
void setup() {
  colorMode(RGB, 1.0);
  size(1200, 650);
  toporig = loadImage("top.jpg");
  top = loadImage("top.jpg");
  top2 = loadImage("top.jpg");
  top3 = loadImage("top.jpg");
  top4 = loadImage("top.jpg");
  top5 = loadImage("top.jpg");
  bottom = loadImage("bottom.jpg");
  bottom2 = loadImage("bottom.jpg");
  noLoop();
}

void draw() {
  top.loadPixels();
  for (int i=0; i<top.pixels.length; i++) {  
    color A = top.pixels[i];
    top.pixels[i] = color(green(A)*1.2 - max(red(A), blue(A)));
  }
  top.updatePixels();
  image(top, 0, 0, 300,300);
  
  top2.loadPixels();
  for (int i=0; i<top.pixels.length; i++) {  
    color A = top.pixels[i];
    top2.pixels[i] = color(1-green(A)*1.2 - max(red(A), blue(A)));
  }
  top2.updatePixels();
  image(top2, 300, 0, 300,300);
  
  top3.loadPixels();
  for (int i=0; i<top.pixels.length; i++) {  
    color A = top.pixels[i];
    color B = bottom.pixels[i];
    top3.pixels[i] = color( red(A)*red(B), green(A)*green(B), blue(A)*blue(B));
  }
  top3.updatePixels();
  image(top3, 600, 0, 300,300);
  
  toporig.loadPixels();
  top4.loadPixels();
  for (int i=0; i<top.pixels.length; i++) {  
    color A = toporig.pixels[i];
    color B = top2.pixels[i];
    top4.pixels[i] = color(red(A)*red(B), green(A)*green(B), blue(A)*blue(B));
  }
  top4.updatePixels();
  image(top4, 0, 300, 300,300);
  
   top5.loadPixels();
  for (int i=0; i<top.pixels.length; i++) {  
    color A = top3.pixels[i];
    color B = top4.pixels[i];
    top5.pixels[i] = color(red(A)+red(B), green(A)+green(B), blue(A)+blue(B));
  }
  top5.updatePixels();
  image(top5, 300, 300, 300,300);
  
}