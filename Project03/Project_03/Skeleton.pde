// Skeleton class 
// will extend Segment 

class Skeleton extends Segment { 
  
// Fields 
int switcher = 0; 
int wait = 0;
 
// Constructor  
public Skeleton(float xPos, float yPos, float d) { 
super(xPos, yPos); 
direction = d; 
} // end Skeleton
 
// Methods 
public void drawSkeleton() { 
 drawLine(); 

} // end Skeleton   
   
 public void switchLimbs(){  
  if (wait >= 20){  
  if (keyPressed) {
  if (key == CODED) { 
    if (keyCode == UP) { 
     switcher = switcher + 1; 
     wait = 0;
    } // end UP  
    if (keyCode == DOWN) { 
     switcher = switcher - 1;
     wait = 0;
    } // end Down 
  } // end CODED  
  } // end keyPressed   
 } // end if  
 
  if (switcher == 9 ){ 
    switcher = 0;
  } // end if 
  
  if (switcher == -1){ 
    switcher = 8;
  } // end if
  wait = wait + 1;
 } // end switchLimbs 
 
public void moveLimbs(){  
  
 if (keyPressed) {
  if (key == CODED) { 
    if (keyCode == LEFT) { 
     turn(-3);
    } // end Left  
    if (keyCode == RIGHT) { 
     turn(3);
    } // end Right
  } // end CODED  
  } // end keyPressed 
} // end moveLimbs
  
} // end Skeleton class
