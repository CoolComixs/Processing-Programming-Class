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
  strokeWeight(1.5); 
  ellipse(x, y, 15, 15);
  //println(x,y);
  float col1 = get(x+4, y+4);
  println(col1);
  float col2 = get(x-2, y-2);
  println(col2);
  if (col1<-1.0 || col2<-1.0) {
    x = 285;
    y=20;
  }
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
    if (key== 'r') { //reset key
      x = 285;
      y=20;
    }
  }
}