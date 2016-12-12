Raining[] rain = new Raining[600];

void setup() {
  size(640, 600);
  for (int i = 0; i < rain.length; i++) {
    rain[i] = new Raining();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < rain.length; i++) {
    rain[i].fall();
    rain[i].show();
  }
}

class Raining {
  float x;
  float y;
  float z;
  float size;
  float speed;

  Raining() {
    x  = random(width);
    y  = random(-500, -50);
    z  = random(0, 20);
    size = map(z, 0, 20, 10, 20);
    speed  = map(z, 0, 20, 1, 20);
  }

  void fall() {
    y = y + speed;
    float grav = map(z, 0, 20, 0, 0.2);
    speed = speed + grav;

    if (y > height) {
      y = random(-200, -100);
      speed = map(z, 0, 20, 4, 10);
    }
  }

  void show() {
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(#E82F2F);
    line(x, y, x, y+size);
  }
}