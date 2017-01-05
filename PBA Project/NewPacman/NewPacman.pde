float vert = 300, hor = 300; //vertical & horizontal vars
float size = 20; // size var
int food; // food var
int x, y; // x & y vars
int totalFood = 255; // total food pellets
ArrayList<Food> pellets = new ArrayList();

void setup() {
  size (600, 600); // window size
  for (int i=0; i<totalFood; i++) {
    Food food = new Food((int)random(height), (int)random(width)); 
    pellets.add(food);
  }
}

void draw() {
  background (0); // background color
  if (keyPressed) { // start key checking
    if (key == 'a') {
      y = y-2;
      hor=hor-2;
    }
    if (key == 'w') {
      x = x-2;
      vert=vert-2;
    }
    if (key == 'd') {
      y = y+2;
      hor=hor+2;
    }
    if (key == 's') {
      x = x+2;
      vert=vert+2;
    }
  } // end key checking
  println(hor, vert);
  ellipse (hor, vert, 20, 20);
  for (int i=0; i<pellets.size(); i++) {
    Food f = (Food) pellets.get(i); 
    f.display();
    if (dist (x, y, f.x, f.y)<20) {
      pellets.remove(i);
    }
  }
}

class Food { //start food making class
  float x; // float x is dif from int x 
  float y; // float y is dif from int y 
  Food(float x, float y) {
    this.x = x; // picks value based on x
    this.y = y; // picks value based on y
  }   
  void display () { //draw food pellets
    fill (#FAC800);
    ellipse (x, y, 5, 5);
  }
} //end food making class