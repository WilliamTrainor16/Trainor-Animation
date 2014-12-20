// Actor Class 
// William Trainor 

class Actor {
// Fields 
float x; 
float y; 
int fillRed = 0; 
int fillGreen = 0; 
int fillBlue = 0; 
int penRed = 0;
int penGreen = 0;
int penBlue = 0;
int size = 50;  
int wid = 50; // width
int hei = 50; // height
int dx = 0;
int dy = 0; 
boolean isVisible = true;

// Constructer 1
public Actor(float xPos, float yPos) { 
x = xPos; 
y = yPos;
} // end Constructer 1

// Constructor 2: blank 
public Actor(){
} // end Constructer 2

// Set fill and pen color 
void setColor(int r, int g, int b){
fillRed = r; 
fillGreen = g; 
fillBlue = b;
} // end setColor

void setPenColor(int r, int g, int b){
  penRed = r; 
  penGreen = g; 
  penBlue = b;
} // end setPenColor  

// Move and goTo functions
void move() {
  x = x + dx;
  y = y + dy;
} // end move 

void goTo(float xPos, float yPos){
  x = xPos;
  y = yPos;
} // end goTo

// bounceEdge
void bounceEdge() {
  if (x > width || x < 0) {
  dx = dx * -1;
  } 
  if (y > height || y < 0) {
    dy = dy * -1; 
  }
} // end bounceEdge

void drawRect() {
  stroke(penRed, penGreen, penBlue);
  fill(fillRed, fillGreen, fillBlue);
  rect(x, y, wid, hei);
} // end drawRect

void drawTriangle(){
stroke(penRed, penGreen, penBlue);
fill(fillRed, fillGreen, fillBlue);
triangle(x, y, x+wid, y+hei, x-wid, y+hei);
} // end drawTriangle 

void drawEllipse() {
stroke(penRed, penGreen, penBlue);
fill(fillRed, fillGreen, fillBlue);  
ellipse(x, y, wid, hei); 
} // end drawEllipse

// setDX and setDY 
void setDX(int xVel) {
  dx = xVel;
} // end setDX 

void setDY(int yVel) {
  dy = yVel;
} // end setDY 

void capture() { 
  boolean xTouch = ((x < ball.x+15*ball.size) && (x > ball.x-15*ball.size)); 
  boolean yTouch = ((y < ball.y+15*ball.size) && (y > ball.y-15*ball.size)); 
  if (xTouch && yTouch) { 
    isVisible = false; 
  } // end if xTouch and yTouch
} // end isTouching  

} // end Actor
