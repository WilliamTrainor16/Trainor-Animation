// William Trainor 
// Actor Class: Project 02 
// Main Class 
boolean snorlaxVisible = false;
// Instances of Actor
Actor rebecca = new Actor (300, 200);
Snorlax snorlax = new Snorlax (100, 100); 
Ball ball = new Ball(300, 350);
Actor joshua = new Actor(200, 00);
Actor myEllipse = new Actor(100, 300); 
Actor myTriangle = new Actor(400, 100); 
Rain rain [] = new Rain [100];

// Setup Function 
void setup() {
size(600, 400); 
background(240, 240, 240); 

// Array for rain
for (int i = 0; i < rain.length; i++) { 
  rain[i] = new Rain(); 
  rain[i].x = random(0, 600);
}

// Set rebecca's values 
rebecca.setColor(0, 0, 255); // Blue
rebecca.setPenColor(255, 0, 0); // Red
rebecca.wid = 100; 
rebecca.hei = 100; 
rebecca.setDX(10); 
rebecca.setDY(10);

// Set Snorlax's vaules
snorlax.size = 4;
snorlax.setDX(10);
snorlax.setDY(10); 

// Set Ball's vaules 
ball.size = 4; 

// Set joshua's values 
joshua.setColor(0, 255, 0); // Green 
joshua.wid = 25; 
joshua.hei = 25; 
joshua.setDX(10); 
joshua.setDY(10); 

// set myTriangle's values 
myTriangle.setColor(255, 0, 255);
myTriangle.wid = 40; 
myTriangle.hei = 20; 
myTriangle.setDX(10); 
myTriangle.setDY(10); 

// set myTriangle's values 
myEllipse.setColor(0, 0, 255);
myEllipse.wid = 40; 
myEllipse.hei = 20; 
myEllipse.setDX(10); 
myEllipse.setDY(10);

} // End setup 

void draw() {  
background(240, 240, 240);  
  ball.drawBall();  
  ball.keyMove(); 
  snorlax.capture();
  if (snorlax.isVisible == true){
    snorlax.drawSnorlax(); 
    snorlax.move();
    snorlax.bounceEdge();  
  } // end snorlax visible
  joshua.capture();
  if (joshua.isVisible == true){
  joshua.drawRect();
  joshua.bounceEdge();
  } // end Joshua visible
  rebecca.capture();
  if (rebecca.isVisible == true){
  rebecca.drawRect();
  rebecca.bounceEdge();
  }
  myTriangle.capture();
  if (myTriangle.isVisible == true){
  myTriangle.drawTriangle();
  myTriangle.move();
  myTriangle.bounceEdge();
  }
  myEllipse.capture();
  if (myEllipse.isVisible == true){
  myEllipse.drawEllipse();
  myEllipse.move();
  myEllipse.bounceEdge(); 
  } 
  
  for (int i = 0; i < rain.length; i++) { 
  rain[i].capture();
  }
  for (int i = 0; i < rain.length; i++) { 
    rain[i].act(); 
  }  
  
} // end draw
