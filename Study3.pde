float x = 100;
float y = 0;

float speed = 0;
float gravity = 0.1;

void setup(){
  size (1080,720);
  background (255);

}
  

void draw (){
  
  fill(0);
text("Click and Space for a Good Time", 500, 100); 
text ("Susana Butterworth",500,120);
  
    stroke(0);
  fill (20,30,40);
  triangle (300,200,350,225,300,250);
  
      stroke(0);
  fill (20,30,40);
  rect (800,600,10,10);
  
  fill (random(255),random(255), random(255));
  noStroke();
  ellipse(x,y,20,20);
  y=y + speed;
  speed=speed+gravity;
  
  if (y>height) {
    speed=speed * -1;
    
    y=height;
  } //end of bouncing ball
    noStroke ();
  fill (random(255),random(255),random(255));
  if (mouseX < 720 && mouseY < 720){
    triangle(900,200, 1000,300,900,400);
  }else if (mouseX > 720 && mouseY <720) {
    ellipse(540,600,100,100);
    
  }//end of circle and triangle
  
  stroke(0);
line (150,60,150,80);
line (160,60,160,80);
line (170,60,170,80);
line (180,60,180,80);
line (190,60,190,80);
line (200,60,200,80);
line (210, 60, 210,80);
line (220, 60,220, 80);
line (230, 60, 230,80);
line (240,60, 240,80);
line (250,60, 250,80);
} //end of lines

void mousePressed(){
  stroke(0);
  fill(random(255), random(255),random(255));
  rectMode(CENTER);
  ellipse(mouseX, mouseY,16,16);
}
  void keyPressed() {
    background(255);
  
}