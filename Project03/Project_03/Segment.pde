// Segment Class 
// Will extend Actor 

class Segment extends Actor { 
  float len; // length
  float weight = 5; // thickness 
  
  // Constructors
  public Segment(float x, float y) {  
 super(x, y); 
len = size; // default 
  } // end segment 
 
 public Segment(float x, float y, float d, float s) { 
  super(x, y); 
  direction = d; 
  len = s;
 } // end segment  
 
 public Segment() { 
 } // end Segment
  
  // Methods
  
 public float getEndX() { 
    float x2 = x + len*cos(radians(direction));
    return x2;
  } // end getEndX 
  
  public float getEndY() { 
    float y2 = y + len*sin(radians(direction));
    return y2;
  } // end getEndX 
  
  public void drawLine() { 
    // Calculate new Points 
    float x2 = x + len*cos(radians(direction)); 
    float y2 = y + len*sin(radians(direction)); 
    stroke(penRed, penGreen, penBlue); 
    line(x, y, x2, y2); 
  } // end drawLine 
  
} // end class Segment
