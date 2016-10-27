PImage meme;
PImage meme2;

void setup() {
  size (800, 551);
  meme = loadImage("meme.jpg");
  meme2 = loadImage("meme2.jpg");
  //image(meme, 0,0, 800, 551);
  //frameRate(5);
}


void draw() {
  /*
 tint(random(255),random(255),random(255));
 image(meme, 0,0, 800, 551);
 tint(random(255), random(255), random(255));
 image(meme2, 0, 0, 800, 551);
  */
 }

 

void keyPressed() {
  if (key=='1') {
    print("KEY 1");
    for (int a = 0; a<2; a++) {
      tint(random(255), random(255), random(255));
      image(meme, 0, 0, 800, 551);
      print("KEY 1");
    }
  }
  if (key=='2') {
    for (int a = 0; a<2; a++) {
      tint(random(255), random(255), random(255));
      image(meme2, 0, 0, 800, 551);
      print("KEY 2");
    }
  }
  
}