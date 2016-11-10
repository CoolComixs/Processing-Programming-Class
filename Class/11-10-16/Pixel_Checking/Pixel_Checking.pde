PImage meme;

void setup(){
 size (480, 507);
 meme = loadImage("meme.jpg");
 noLoop();
}
void draw(){
 meme.loadPixels();
 for (int i=0; i<meme.pixels.length; i++){
  color c = meme.pixels[i];
  float r = red(c);
  float b = blue(c);
  float g = green(c);
  float br = brightness(c);
  float s = saturation(c);
  float h = hue(c);
  //if(i/meme.pixels.length(0)){
  }
  image(meme, 0, 0);
}