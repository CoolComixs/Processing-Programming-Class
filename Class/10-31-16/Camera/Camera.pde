import processing.video.*;

int numPixelsWide, numPixelsHigh;
int blockSize = 10;
Movie mov;
color movColors[];

Capture cam;

void setup() {
  size (1280, 720);
  cam = new Capture(this);
  cam.start();
  noStroke();
  numPixelsWide = width / blockSize;
  numPixelsHigh = height / blockSize;
  println(numPixelsWide);
  movColors = new color[numPixelsWide * numPixelsHigh];
}

void draw() {


  if (cam.available() == true) {
    cam.read();
    cam.loadPixels();
    int count = 0;
    for (int j = 0; j < numPixelsHigh; j++) {
      for (int i = 0; i < numPixelsWide; i++) {
        movColors[count] = cam.get(i*blockSize, j*blockSize);
        count++;
      }
    }
    background(255);
    for (int j = 0; j < numPixelsHigh; j++) {
      for (int i = 0; i < numPixelsWide; i++) {
        fill(movColors[j*numPixelsWide + i]);
        rect(i*blockSize, j*blockSize, blockSize, blockSize);
      }
    }
   
  }
}