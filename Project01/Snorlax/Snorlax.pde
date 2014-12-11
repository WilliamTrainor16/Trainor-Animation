// William Trainor
void drawPoke(int x, int y, int s) {  
// Torso 
stroke(0);
fill(#0B3905);
ellipse(x,y, 17*s,14*s);
fill(#EFF0C9);
ellipse(x,y+.4*s, 11*s,11*s); 
// Arms
fill(#0B3905);
/* The quads look better than the ellipses
ellipse(x-10*s, y-4.8*s, 11*s, 4*s);
ellipse(x+10*s, y-4.8*s, 11*s, 4*s); */
quad(x-4.65*s,y-6*s, x-8*s,y-3*s, x-12*s,y-1*s, x-14*s,y-3*s);
quad(x+4.65*s,y-6*s, x+8*s,y-3*s, x+12*s,y-1*s, x+14*s,y-3*s); 
// Feet 
fill(#EFF0C9);
ellipse(x-6.7*s,y+5.2*s, 7*s, 8*s);
ellipse(x+6.7*s,y+5.2*s, 7*s, 8*s);
fill(#C19C73);
ellipse(x+6.7*s,y+5.8*s, 4.3*s,5.2*s);
ellipse(x-6.7*s,y+5.8*s, 4.3*s,5.2*s); 
fill(255); 
triangle(x+8.4*s,y+1.8*s, x+9.4*s,y+2.7*s, x+9.8*s,y+1.2*s);
triangle(x-8.4*s,y+1.8*s, x-9.4*s,y+2.7*s, x-9.8*s,y+1.2*s); 
triangle(x-5*s,y+1.8*s, x-4*s,y+2.7*s, x-3.6*s,y+1.2*s); 
triangle(x+5*s,y+1.8*s, x+4*s,y+2.7*s, x+3.6*s,y+1.2*s);
triangle(x-6.1*s,y+1.5*s, x-7.4*s,y+1.5*s, x-6.7*s,y+0*s);
triangle(x+6.1*s,y+1.5*s, x+7.4*s,y+1.5*s, x+6.7*s,y+0*s);
// Head
fill(#0B3905);
ellipse(x,y-9.8*s, 11*s,9.3*s); 
fill(#EFF0C9);
ellipse(x,y-9.5*s, 9*s,8*s); 
fill(#0B3905); 
stroke(#0B3905);
triangle(x,y-11.5*s, x-3.3*s,y-13.5*s, x+3.3*s,y-13.5*s); 
// Mouth  
noFill();
arc(x, y-7.5*s, 4.5*s, 1.5*s, 0, PI);
fill(255);
triangle(x-2.3*s,y-7.4*s, x-1.7*s,y-7*s, x-1.7*s,y-8*s);
triangle(x+2.3*s,y-7.4*s, x+1.7*s,y-7*s, x+1.7*s,y-8*s);
// Eyes
line(x-3*s,y-10.01*s, x-1*s,y-10*s); 
line(x+3*s,y-10.01*s, x+1*s,y-10*s); 
// Ears
fill(#0B3905);
triangle(x-.5*s,y-14*s, x-4*s,y-12*s, x-3*s,y-15.4*s);
triangle(x+.5*s,y-14*s, x+4*s,y-12*s, x+3*s,y-15.4*s);
} 
void setup() { 
  // setup 
size(600, 400);
// Sky
background(#A0E4F7); 
// Grass 
fill(#23C110);
rect(0, 190, 600, 300);
drawPoke(300, 230, 10); 
}  
