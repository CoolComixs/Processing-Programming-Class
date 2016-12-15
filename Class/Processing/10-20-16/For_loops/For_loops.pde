size(600, 600);


/* 
 for loops template
 for (INT/Counter = START; INT<AMMOUNT OF TIMES; INT++ OR INT=INT+VALUE){
 
 }
 */

/*
for (int i=50; i<600; i=i+100) {
  println(i);
  fill (random(255), random(255), random(255));
  fill(i/2, 0, i/2.5);
  ellipse (i, 300, 100, 100);
}
*/

for (int i=0; i<650; i++){
  fill(i,0,0);
  ellipse (i, 300, 70, 70);
  
  fill(0,i,0);
  ellipse (i, 230, 70, 70);
  
  fill(0,0,i);
  ellipse (i, 370, 70, 70);
  
  fill(i,i,i);
  ellipse (i, 440, 70, 70);
  
  fill(i,i/2,i/8);
  ellipse (i, 510, 70, 70);
  
  fill(i/50,i,i);
  ellipse (i, 160, 70, 70);
  
  fill(i+70,i,i+70);
  ellipse (i, 580, 70, 70);
  
  fill(199,i,0);
  ellipse (i, 90, 70, 70);
  
  fill(0,i++,0);
  ellipse (i, 20, 70, 70);
}