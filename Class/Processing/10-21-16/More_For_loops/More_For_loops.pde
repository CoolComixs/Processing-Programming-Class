size (600,600);


for (int y=600; y>0; y=y-25){
 println (y);  
 fill (random (255), random (255), random (255),random (255));
 ellipse (300,300,y,y);
}

for (int y=0; y<600; y=y+50){
 println (y); 
 
 line(0,y,600,y);
 line(y,0,y,600);
}