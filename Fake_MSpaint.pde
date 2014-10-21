int redvalue = 0;
int bluevalue = 0;
int greenvalue = 0;
int strokesize = 30;

void setup () {
 size(600,600);
 strokeWeight(strokesize);
 background(255);
 frameRate(50);
  
}

void draw () {
  stroke (redvalue, greenvalue, bluevalue);
 if ( keyPressed && key == 'w') {
  strokesize = strokesize+1;
 strokeWeight(strokesize); 
 }
 
  if ( key == 'r') {
    redvalue = 255;
    bluevalue = 0;
    greenvalue = 0;
  }
 if ( key == 'g') {
   redvalue = 0;
   bluevalue = 0;
   greenvalue = 255;
 }
 if (key == 'b') {
   redvalue = 0;
   bluevalue = 255;
   greenvalue = 0;
 }
  if (key == 'y') {
   redvalue = 255;
   bluevalue = 0;
   greenvalue = 255;
 }
 if (key == 'd') {
 } 
 
 if (key == 'e') {  
   stroke(255);
   fill(255);
   ellipse(mouseX,mouseY,10,10);
 }
 
 if (key == 'o') {
   stroke(int(random(255)),int(random(255)),int(random(255)));
   fill(int(random(255)),int(random(255)),int(random(255)));
   ellipse(mouseX,mouseY,60,60);
 }
 
   point(mouseX, mouseY);
 
 
 
}






