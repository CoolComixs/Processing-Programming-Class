void setup() {
  size(1920, 1080);
  //background(255); //black backround
  // frameRate(5);
}

void draw() {
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