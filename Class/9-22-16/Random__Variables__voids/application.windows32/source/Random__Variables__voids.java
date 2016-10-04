import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Random__Variables__voids extends PApplet {

public void setup() {
  
  //background(255); //black backround
  // frameRate(5);
}

public void draw() {
  background(random(255), random(255), random(255));
  fill(random(255), random(255), random(255));
  /*stroke(random(255), random(255), random(255));
   line(0, 0, random(600), random(600));
  float s = random(200);
  println(random(600));*/
  ellipse(random(0, 1920), random(0, 1920), random(1920), random(1920));
  triangle(random(0, 1920), random(0, 1920), random(0, 1920), random(0, 1920), 
    random(0, 1920), random(0, 1920));
  rect(random(0, 1920), random(0, 1920), random(0, 1920), random(0, 1920));
  
}
  public void settings() {  size(1920, 1080); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Random__Variables__voids" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
