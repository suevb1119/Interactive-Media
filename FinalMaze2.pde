/*

 Press 'UP' to move up.
 Press 'DOWN' to move down.
 Press 'LEFT' to move left.
 Press 'RIGHT' to move right.
 Press 'v' to restart.
 Get to the end as fast as possible.
 If you go on to the red areas, you  will fail.
 */

int count_at_reset;
int difference, sec; 
float x = 10;
float y = 380;
PImage a;
PImage b;
PImage c;
PImage d;

void setup() {
  size(400, 400);
  frameRate(60);
  a = loadImage ("unicorn.jpg");
  b = loadImage ("unicornav.png");
  c = loadImage ("rainbow.png");
  d = loadImage ("candy1.png");
  
}



void draw() {

  background(255,236,247);
  stroke(0); 
  fill(255,41,156);
  triangle (300,30,300,60,273,45);
  noStroke();
  fill(183,255,217);
  ellipse(70,190,10,10);
  ellipse(55,190,10,10);
  ellipse(40,190,10,10);
  ellipse(25,190,10,10);
  ellipse(10,190,10,10);
  image (c, 0, 30, width/4, height/4);
  image (d, 325, 200, width/10, height/10);
  

  // maze
  noStroke(); 
  fill(50,255,90);
  rect(0, 200, 40, 200); // start -- line
  rect(0, 200, 320, 40); // horizontal line
  rect(80, 200, 30, -90); //first up from horizontal bar
  rect(100, 100, 30, 30); //second horizontal bar
  rect(130, 100, 30, 50);//down line after second horizontal
  rect(130, 130, 75, 20); //horizontal bar three
  rect(170, 150, 35, -100); //down line after horizontal bar three
  rect(170, 50, -50, 30); //horizontal bar four
  rect(120, 80, -35, -80); // line -- end

  boolean show_message = false;

  if (x > 41 && x <400 && y > 241 && y<400) {
    show_message = true;
    
  }

  if (x > 321 && x < 400 && y > 199 && y < 241) {
    show_message = true;
  }

  if (x > 191 && x < 400 && y < 199 && y > -1) {
    show_message = true;
  }

  if (x > 101 && x < 206 && y < 199 && y > 151) {
    show_message = true;
  }

  if (x > 131 && x < 206 && y < 199 && y > 151) {
    show_message = true;
  }

  if (x < 179 && x > 169 && y > 81 && y < 129) {
    show_message = true;
  }

  if (x > -1 && x < 119 && y < 119 && y > -1) {
    show_message = true;
  }

  if (x > 156 && x < 204 && y < 49 && y > -1) {
    show_message = true;
  }

  if (x > -1 && x < 160 && y < 60 && y > 81) {
    show_message = true;
  }

  if (x > -1 && x < 75 && y > 100 && y < 189) {
    show_message = true;
  }
  
    if (x > 111 && x < 139 && y > 130 && y < 160) {
    show_message = true;
  }

  if ( show_message ) {
    fill(0,255,0); 
    textSize(140); 
    text("FAIL", 60, 370);
  }
  
 //if (show_message) {
 // reset(); 
 // count_at_reset = millis(); 
//}
   
   
  // player 
  image (b, x, y, width/15, height/15);
  
  //timer
  fill(0,255,0);
  textSize(30);
  text(sec, 50, 50);
}
{
  boolean endReached = false;

  if (y < 1) {
    endReached = true;
  }



  if (!endReached ) {
    difference = millis() - count_at_reset;
    sec = difference /1000;
  } else {
    // He won!
    text("You Won", 250, 50);
    image (a, 0,0, width, height);
  }

  if (keyPressed) { 
    if (key == 'v'||key == 'V') {
      reset();
      x = 10;
      y = 380;
    }
  }

  if (keyPressed) { 
    if (keyCode == UP||key == UP) {
      y = y - 1;
    }
  }

  if (keyPressed) { 
    if (keyCode == DOWN ||key == DOWN) {
      y = y + 1;
    }
  }

  if (keyPressed) { 
    if (keyCode == RIGHT||key == RIGHT ) {
      x = x - 1;
    }
  }

  if (keyPressed) { 
    if (keyCode == LEFT ||key == LEFT) {
      x = x + 1;
    }
  }

  if (x > width-10 ) { 
    x = width-10;
  }

  if (x < 0 ) { 
    x = 0;
  }

  if (y > height-10 ) { 
    y = height-10;
  }

  if (y < 0) { 
    y = 0;
  }
}

void reset() {
  count_at_reset = millis();
  x = 10;
  y = 380;
} 