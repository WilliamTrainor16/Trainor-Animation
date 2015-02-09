// Snorlax Class will extend Actor 
// William Trainor 
class Ball extends Segment {
  // Fields 
  boolean inHand = true;
  
  public Ball(float xPos, float yPos){
  super( xPos, yPos); 
  } // end Ball 
  
void drawBall() {  
  int s = size;
  // Outside circle 
strokeWeight(0);  
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
  
  void keyReleased() {
   if (key == ' ') { 
  if (inHand) {
    inHand = true; 
   setDX(0); 
  setDY(0);  
  } // end if
  else{
    inHand = true; 
    setDX(10); 
  setDY(10);
  } // end else 
   } // end SPACE
} // end Key Released

} // end of Ball class

