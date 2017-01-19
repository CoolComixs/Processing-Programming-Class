//To do:
//  reset after touching ghost
//  point counter
//  win screen after all is eaten

float vert = 300, hor = 300; //vertical & horizontal vars
float size = 20; // size var
int food; // food var
int x, y; // x & y vars
boolean dead = false;
int totalFood = 150; // total food pellets
ArrayList<Food> pellets = new ArrayList(); //load food

//Vars for the ghosts
PImage inky, blinky, pinky, clyde; //loads image vars
int ghost_x; // x value of the ghosts.

void setup() {
  size (600, 600); // window size
  frameRate(60);
  inky = loadImage("inky.png"); //loads in image
  blinky = loadImage("blinky.png"); //loads in image
  pinky = loadImage("pinky.png"); //loads in image
  clyde = loadImage("clyde.png"); //loads in image
  for (int i=0; i<totalFood; i++) { //start making food
    Food food = new Food((int)random(height), (int)random(width)); 
    pellets.add(food);
  } //end making food
}

void draw() {
  background (0); // background color
  println(frameRate);
  for (int i=0; i<600; i++) { //start  movement var
    ghost_x = ghost_x+1;
    if (ghost_x == 599) { //start reset ver
      for (int i2=599; i2>1; i2--) {
        ghost_x = ghost_x-1;
      }
    } //end reset var
  } //end movement var

  background (0); //reset background
  image (inky, ghost_x, 40, 35, 35); //draw inky
  image (pinky, ghost_x, 195, 35, 35); //draw pinky
  image (blinky, ghost_x, 345, 30, 30); //draw blinky
  image (clyde, ghost_x, 540, 30, 30); //draw clyde

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
  
  if(hor <= 0){
    hor = 600;
  }
  if(hor >= 600){
    hor = 0;
  }
  if(vert <= 0){
    vert = 600;
  }
  if(vert >= 600){
    vert = 0;
  }
  
  println(hor, vert); //printing location for console
  ellipse (hor, vert, 25, 25); //draws pacman
  for (int i=0; i<pellets.size(); i++) { //start checking for food
    Food f = (Food) pellets.get(i); 
    f.display();
    if (dist (hor, vert, f.x, f.y)<20) {
      println("NOM NOM NOM"); // little message in console when food is eatan.
      pellets.remove(i); //removes the pellet
    }
  } //end checking for food

  
}

class Food { //start food making class
  float x; // float x is dif from int x 
  float y; // float y is dif from int y 
  Food(float x, float y) {
    this.x = x; // picks value based on x
    this.y = y; // picks value based on y
  }   
  void display () { //draw food pellets
    fill (#FAC800); //color
    ellipse (x, y, 10, 10); //template for food
  }
} //end food making class