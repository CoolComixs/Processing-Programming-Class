PImage maze;

int x = 285;
int y = 20;

void setup() {
  size (600, 600);
  maze = loadImage("maze.png");
  background(255);
}

void draw() {
  background (255);
  image (maze, 10, 10, 580, 580);
  noFill();
  ellipse(x, y, 15, 15);
  //println(x,y);
  float col1 = get(x+6, y+6);
  println(col1);
  float col2 = get(x-2, y-2);
  println(col2);
  if (col1<-1.0 || col2<-1.0) {
    x = 285;
    y=20;
  }
}

void keyPressed() {
  if (key == 'w') {
    y=y-5;
  }
  if (key == 'a') {
    x=x-5;
  }
  if (key == 's') {
    y=y+5;
  }
  if (key == 'd') {
    x=x+5;
  }
}