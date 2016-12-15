//PImage meme;
PImage dragon;

void setup() {
  size (800, 450);
  dragon = loadImage("dragon.jpg");
  noLoop();
}
void draw() {
  dragon.loadPixels();
  for (int i=0; i<dragon.pixels.length; i++) {
    color c = dragon.pixels[i];
    float r = red(c);
    float b = blue(c);
    float g = green(c);
    float br = brightness(c);
    float s = saturation(c);
    float h = hue(c);
    //dragon.pixels[i] = color (r*b*3/g*b,g-b-7+r*g,b+r-g/b);
    //dragon.pixels[i] = color ((r*b/br)*r*g*b,g-b+s+r*g,b+r-s/h);
    dragon.pixels[i] = color (r+r+g, g-b, b+b+r);
  }
  dragon.updatePixels();
  image(dragon, 0, 0);
}