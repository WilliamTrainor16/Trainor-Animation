// Snorlax Class will extend Actor 
// William Trainor 
class Ball extends Actor {
  // No new fields 
  
  public Ball(float xPos, float yPos){
  super( xPos, yPos); 
  } // end Ball 
  
void drawBall() {  
  int s = size;
  // Outside circle 
fill(#FC2E2E);
ellipse(x, y, 15*s, 15*s); 
fill(255, 255, 255);
arc(x, y+0*s, 15.1*s, 15.1*s, 0, PI);
//grey middle
stroke(#6C6969);
fill(#6C6969); 
ellipse(x, y, 6*s, 6*s);
quad(x+2.9*s, y-.6*s, x+2.9*s, y+.6*s, x+7.6*s, y+.6*s, x+7.6*s, y-.6*s);
quad(x-2.9*s, y-.6*s, x-2.9*s, y+.6*s, x-7.6*s, y+.6*s, x-7.6*s, y-.6*s);
// outer core  
stroke(0);
fill(255, 255, 255);
ellipse(x, y, 3*s, 3*s);
// inner core  
ellipse(x, y, 2*s, 2*s); 
  } // end drawBall 

void keyMove(){ 
  if (keyPressed) {
  if (key == CODED) { 
    if (keyCode == UP) { 
  ball.dy = -10;
  ball.move(); 
  ball.dy = 0;
    } // end UP 
    if (keyCode == DOWN) { 
  ball.dy = 10;
  ball.move(); 
  ball.dy = 0;
    } // end DOWN 
    if (keyCode == RIGHT) { 
  ball.dx = 10;
  ball.move(); 
  ball.dx = 0;
    } // end RIGHT 
    if (keyCode == LEFT) { 
  ball.dx = -10;
  ball.move();
  ball.dx = 0;
    } // end LEFT
  } // end CODED
} // end keyMove 
}
  
} // end of Ball class

