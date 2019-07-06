/*
  f1 -> stem 1%
  xn + 1 = 0
  yn + 1 = 0.16 yn.
  
  f2 -> Successively smaller leaflets 85%
  xn + 1 = 0.85 xn + 0.04 yn
  yn + 1 = −0.04 xn + 0.85 yn + 1.6.
  
  f3 -> Largest left-hand leaflet 7%
  xn + 1 = 0.2 xn − 0.26 yn
  yn + 1 = 0.23 xn + 0.22 yn + 1.6.
  
  f4 -> Largest right-hand leaflet 7%
  xn + 1 = −0.15 xn + 0.28 yn
  yn + 1 = 0.26 xn + 0.24 yn + 0.44.
  range −2.1820 < x < 2.6558 and 0 ≤ y < 9.9983.

One experimenter has come up with a table of coefficients to produce another remarkably naturally looking fern however,
resembling the Cyclosorus or Thelypteridaceae fern. These are : 
w   a        b       c       d      e       f      p
ƒ1  0       0       0       0.25   0      −0.4   0.02
ƒ2  0.95    0.005  −0.005   0.93  −0.002   0.5   0.84
ƒ3  0.035  −0.2     0.16    0.04  −0.09    0.02  0.07
ƒ4 −0.04    0.2     0.16    0.04   0.083   0.12  0.07
*/

float x,y;
int i;
void setup(){
  size(600,600);
  background(0);
  x=0;y=0;i=0;
  noLoop();
}

void nextPoint(){
  
  float nextX,nextY;
  float r = random(1);
  if(r<0.01){
    nextX =  0;
    nextY =  0.16 * y;
  }else if(r<0.86){
    nextX =  0.85 * x + 0.04 * y;
    nextY = -0.04 * x + 0.85 * y + 1.60;
  }else if(r<0.93){
    nextX =  0.20 * x - 0.26 * y;
    nextY =  0.23 * x + 0.22 * y + 1.60;
  }else{
    nextX = -0.15 * x + 0.28 * y;
    nextY =  0.26 * x + 0.24 * y + 0.44;
  }
  x=nextX;
  y=nextY;

}

void drawPoint(){
  colorMode(HSB,255,255,255);
  stroke(map(y, 0, 9.9983,0,255),255,255,200);
 //stroke(255,0,0);
  strokeWeight(0.9);
  float px = map(x,-2.1820,2.6558,0,width);
  float py = map(y,0,9.9983,height,0);
  point(px,py);
}

void resetPaint(){
  x=0;y=0;i=0;
  background(0);
  redraw();
}

void draw(){
  if(i<500){
    for(int j=0;j<100;j++){
      drawPoint();
      nextPoint();
    }
    i++;
  }else{
    noLoop();
  }
}
