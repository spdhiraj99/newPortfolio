float a = 0;
Box b;
ArrayList<Box> Sponge;

void setup() {
  size(600,600,P3D);  
  Sponge = new ArrayList<Box>();
  Box b = new Box(0,0,0,200);
  Sponge.add(b);
}
void mousePressed(){
  ArrayList<Box> next = new ArrayList<Box>();
  for(Box b : Sponge){
    ArrayList<Box> newBoxes = b.generate();
    next.addAll(newBoxes);
  }
  Sponge = next;
}

void resetPaint(){
  Sponge.clear();
  
}

void draw(){
  translate(height/2,width/2);
  noStroke();
  background(0);
  lights();
  rotateX(a);
  rotateY(a);
  rotateZ(a);
  for(Box b : Sponge){
    b.show();
  }
  a+=0.01;
}
