class Rain extends Actor { 
  
  public Rain() {
    super(); 
    float xRandom, yRandom = 0;
    xRandom = random(0, 600);
    yRandom = random(0, 400);
    size = (int)random( 3, 10); 
    fillBlue = 255; 
    dy = (int)random(5, 10); 
  } 
  
  public void drawRain() {
    fill(fillRed, fillGreen, fillBlue); 
    ellipse(x, y, size, size); 
  } 
 
 public void act() { 
  drawRain(); 
 move(); 
if (y > height) { 
 y = -20; 
dy = (int)random(1, 10); 
} 
 }
 
}
      
