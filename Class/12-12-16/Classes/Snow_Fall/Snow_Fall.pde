Flake[] flake = new Flake[100];
void setup() {
  size (600, 600);
  for (int i = 0; i<flake.length; i++) {
    flake[i] = new Flake();
  }
}
void draw() {
  background (0);
  for (int i = 0; i<flake.length; i++) {
    flake[i].fall();
    flake[i].show();
  }
}
class Flake {
  float x;
  float y;
  float z;
  float size = random (1,25);
  float speed;

  Flake() {
    x = random (width);
    y = random (-500, 50);
    z = random (0, 20);
    size = map(z, 0, 20, 10, 20);
    speed = map(z, 0, 20, 1, 20);
  }
  void fall() {
    y=y+speed;
    float grav = map(z, 0, 20, 0, 0.2);
    speed = speed+grav;

    if (y> height) {
      y= random(-200, -100);
      speed = map(z, 0, 20, 4, 10);
    }
  }
    void show() {
      //float col1 = random(0,255);
      //float col2 = random(0,255);
      //float col3 = random(0,255);
      //stroke (col1,col2,col3);
      //fill (col1,col2,col3);
      ellipse (x, y, size, size);
    }
  }