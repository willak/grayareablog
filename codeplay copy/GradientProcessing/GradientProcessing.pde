
int xpos = 1;
int ypos = 1;
int direction = 1;

int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2, c3, c4, c5;

//for wave gradient
float angle = 0;
float px = 0, py = 0;
float amplitude = 60;
float frequency = 0;
float fillGap = 2.5;
color c;

void setup () {
  size (900,300);
  background (178,59,168,10);
  frameRate (20);
  
  b1 = color(255);
  b2 = color(0);
  c1 = color(59,88,205);
  c2 = color(73,215,209);
  c3 = color(204,58,241);
  c4 = color(96,202,132);
  c5 = color(197,248,59);
  
  //for wave gradient
  float angle = 0;
  float px = 0, py = 0;
  float amplitude = 30;
  float frequency = 0;
  float fillGap = 2.5;
  color c;
  
}

void draw () {
  //background gradient below
  setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
  setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  
  //square gradient 
  setGradient(80, (ypos+100), 25, 25, c1, c2, Y_AXIS); // blue to teal
  setGradient((-xpos*2), 120, 23, 23, c3, c4, X_AXIS); // pink to green
  setGradient((xpos+190), 110, 20, 20, c5, c4, Y_AXIS); 
  setGradient(160, (ypos+150), 25, 25, c3, c2, Y_AXIS); 
  
//shapes that should move
stroke (200,100,256);
strokeWeight (10);
fill (100,200,256);
ellipse (xpos, (ypos*3), 100, 100);
xpos = xpos + 2;
if (xpos >= width) {
  xpos = -100;
}

fill(191, 247, 118);
stroke (122,135,234);
rect (300, ypos, 100, 100);
ypos = ypos + 2;
if (ypos > height) {
 ypos=-100; 
}

fill(191, 247, 118);
stroke (122,35,234,150);
rect (100, ypos, 50, 50);
}


void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
  
  fill(73,215,209,60);
  stroke(96,203,137,80);
  strokeWeight(3);
  rect (200,ypos,25,ypos);
  ypos = ypos + 2;
if (ypos > height) {
 ypos=-100; 
}

  
  fill(204,58,241);
  stroke(96,202,132);
  strokeWeight(5);
  rect (((xpos+2)*3),50,25,25);
  xpos = xpos + 1;
if (xpos >= width) {
  xpos = -100;
}
  
  fill(76,131,233);
  stroke(197,248,59);
  strokeWeight(5);
  rect (xpos,ypos,25,25);
  
  fill(40,100,253);
  stroke(100,248,200,150);
  strokeWeight(5);
  rect (700,ypos,25,25);
  
  fill(91,203,248, 10);
  stroke(int(random(255)),int(random(255)),int(random(255)), 5);
  strokeWeight(30);
  rect(25,25,850,250);
}

