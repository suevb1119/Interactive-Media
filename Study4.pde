Catcher catcher;    // One catcher object
Timer timer;        // One timer object
Drop[] drops;       // An array of drop objects
int totalDrops = 0; // totalDrops

void setup() {
  size(600, 400);
  catcher = new Catcher(22); // Create the catcher with a radius of 32
  drops = new Drop[2000];    // Create 1000 spots in the array
  timer = new Timer(500);    // Create a timer that goes off every 300 milliseconds
  timer.start();             // Starting the timer
}

void draw() {
  background(255);
  text ("Catch Me if You Can", 250, 30);

  // Set catcher location
  catcher.setLocation(mouseX, mouseY); 
  // Display the catcher
  catcher.display(); 

  // Check the timer
  if (timer.isFinished()) {
    // Deal with raindrops
    // Initialize one drop
    drops[totalDrops] = new Drop();
    // Increment totalDrops
    totalDrops ++ ;
    // If we hit the end of the array
    if (totalDrops >= drops.length) {
      totalDrops = 0; // Start over
    }
    timer.start();
  }

  // Move and display all drops
  for (int i = 0; i < totalDrops; i++ ) {
    drops[i].move();
    drops[i].display();
    if (catcher.intersect(drops[i])) {
      drops[i].caught();
    }
  }
}