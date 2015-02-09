// Project 03 
// William Trainor  
// Main Class

// Fields
int x = 300;
int y = 250;   
 
// Ball 
Ball ball = new Ball(x, y);
 
// Intances of Skeleton 
Skeleton head = new Skeleton(x, y, 0);
Skeleton neck = new Skeleton(x, y, -90);
Skeleton torso = new Skeleton(x, y, 90); 
Skeleton lArm = new Skeleton(x, y, 140); 
Skeleton rArm = new Skeleton(x, y, 40);
Skeleton lHand = new Skeleton(x, y, 225);
Skeleton rHand = new Skeleton(x, y, -45);
Skeleton lLeg = new Skeleton(x, y, 140); 
Skeleton rLeg = new Skeleton(x, y, 40); 
Skeleton lFoot = new Skeleton(x, y, 90);
Skeleton rFoot = new Skeleton(x, y, 90); 

// Array Length = 11 
Skeleton skeleton [] = { neck, lArm, rArm, lHand, rHand, lLeg, rLeg, lFoot, rFoot, torso, head };
 
// Methods
void setup() { 
  size(600, 600);
  background(240, 240, 240); 
  
  for (int i = 0; i < skeleton.length - 1; i++) { 
    strokeWeight( 5 );
    skeleton[i].drawSkeleton(); 
    skeleton[i].setPenColor( 0, 0, 0); 
    skeleton[i].len = 100; 
  } // end for loop 
  neck.len = 70;  
  
  // Set Ball's vaules 
ball.size = 4;
  
  // head properties 
  head.wid = 90; 
  head.hei = 100; 
  head.setColor(240, 240, 240);
  head.setPenColor( 0, 0, 0); 
  head.drawEllipse();
} // end of setup

void draw() {   
  background(240, 240, 240); 
  for (int i = 0; i < skeleton.length - 1; i++) { 
    skeleton[i].drawSkeleton(); 
    skeleton[i].setPenColor( 0, 0, 0);
  } // end for loop  
  head.drawEllipse();
  
  head.switchLimbs();  
  
  ball.drawBall();
  
  skeleton[head.switcher].setPenColor( 255, 0, 0);
  skeleton[head.switcher].moveLimbs();  
  
  // Head 
  head.goTo(neck.getEndX(), neck.getEndY()  ); 
  // Neck 
  neck.goTo(torso.x, torso.y); 
  // Arms 
  lArm.goTo(torso.x, torso.y); 
  rArm.goTo(torso.x, torso.y);
  // Hands 
  lHand.goTo(lArm.getEndX(), lArm.getEndY() );
  rHand.goTo(rArm.getEndX(), rArm.getEndY() );
  // Legs 
  lLeg.goTo(torso.getEndX(), torso.getEndY() );
  rLeg.goTo(torso.getEndX(), torso.getEndY() );
  // Feet
  lFoot.goTo(lLeg.getEndX(), lLeg.getEndY() );
  rFoot.goTo(rLeg.getEndX(), rLeg.getEndY() );
  
  ball.keyReleased();
  
  if (ball.inHand) {
  // Ball 
  ball.goTo(rHand.getEndX(), rHand.getEndY() );
  } // end if  
  else{ 
  ball.move(); 
  ball.bounceEdge();  
  } // end else
  strokeWeight(5);
} // end draw function

