// William Trainor
void drawSnowman(int x, int y, int s) { 
  fill (240, 240, 240);
  // Bottom 
  ellipse(x, y+7*s, 12*s, 12*s);
  // Mid
  ellipse(x, y, 9*s, 9*s);
  // Head 
  ellipse(x, y-6*s, 7*s,  7*s);
  // mouth 
  fill(240, 240, 240);
  arc(x, y-5.2*s, 4*s, 2*s, 0, PI); 
} 
void setup() { 
// setup 
size(600, 400);
background(#5BD7F5); 
drawSnowman(300, 200, 10); 
drawSnowman(150, 240, 7); 
drawSnowman(450, 240, 7);
}  

//void draw() { 
  //background(#5BD7F5);
  //drawSnowman(mouseX, mouseY, 5);  
//}
