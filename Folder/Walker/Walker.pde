int test12;//хуй пизда ебать и блядь в сми нельзя употреблять
PVector loc;
PVector vel;
int col =0 ;
void setup() {
  loc = new PVector(width/2, height/2);
  vel = new PVector(2.5, -2);
  size(700, 700);
  frameRate(200);
  background(255);
  colorMode(HSB,255,255,255);
}
void draw() {
  if(++col > 255) col = 0;
  fill(col,255,255);
  walk();
}
