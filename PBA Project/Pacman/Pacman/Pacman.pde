PImage lvl1; //load in level image

int x= 273; //starting x
int y= 340; //starting y
int food_x = 300;
int food_y = 300;

ArrayList<Food> food = new ArrayList();

void setup() {
  size (542, 600); //window size
  lvl1 = loadImage ("lvl1.png"); //loads lavel image
  for (int i=0; i<100; i++) {
    Food P = new Food((int)random(width), (int)random(height));
    food.add(P);
  }
}

void draw() {
  background(#000000); //makes black background
  image(lvl1, 0, 0); //puts level ontop of background
  fill(#EAE00C); //sets pacman color
  ellipse(x, y, 20, 20); //draws player/pacman

  for (int i=0; i<food.size(); i++) {
    Food f = (Food) food.get(i);
    f.display();
  }

  if (keyPressed) { //start of control inputs
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
  } //end of control inputs

  println(x, y); //prints current location
  float left = blue(get(x-20, x-20)); //checks value to the left
  //println(left);
  float right = blue(get(x+20, x+20)); //checks value to the right
  //println(right);
  float up = blue(get(y-20, y-20)); //checks value above 
  // println(up);
  float down = blue(get(y+20, y+20)); //checks value bellow
  //println(down);
  println(left, right, up, down); //prints out values for left, right, up, down

  float eat = blue(get(x,y));
  if (eat != 0){
    fill (0,0,0);
    rect(x,y,10,10);
  }

  //if (left!=0) { //start of wall collision checking
  //  x=x+1;
  //}
  //if (right!=0) {
  //  x=x-1;
  //}
  //if (up!=0) {
  //  y=y-1;
  //}
  //if (down!=0) {
  //  y=y+1;
  //} //end of wall collision checking
}

class Food {
  int food_x;
  int food_y;
  Food(int food_x, int food_y) {
    this.food_x = food_x;
    this.food_y = food_y;
  }
  void display() {
    stroke(#0000ff);
    fill(#0000ff);
    ellipse(food_x, food_y, 10, 10);
  }
}