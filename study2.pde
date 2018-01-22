float y = 100;

void setup(){
   background (random(255), random(255), random(255));
  size (1080,720);
  stroke(random(255), random(255), random(255));
  noLoop();
  
  y = height *0.5;
}
void draw(){
      textSize (30);
  fill (0);
  text("fiesta", 100, 100, -30);
  text ("time", 100, 140);
  
line(0, y, width, y); 

 y = y - 1; 
  if (y < 0) { 
    y = height; 
  } 

if (mousePressed){
  fill (random(255), random(255), random(255), 200);
  rect (mouseX, mouseY,50,50);}
}
void keyPressed(){
loop();
background(random(255), random(255), random(255));
stroke(random(255), random(255), random(255));
println ("Party all night" + key);
}

 