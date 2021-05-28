int m[] = {50, 600, 350, 81, 650, 600, 34, 80};
int rand;
fun f;
void setup() {
  f = new fun();
  size(700, 700);
  background(255);
  noSmooth();
  frameRate(10000);
  surface.setTitle("Треугольник Серпинского");
}
void draw() {
  rand = (int)random(1, 4);
  switch(rand) {
  case 1:
    f.form1(0, 1);
    break;
  case 2:
    f.form1(2, 3);
    break;
  case 3:
    f.form1(4, 5);
    break;
  }
  point(m[6], m[7]);
}
