int amount = 30;
int rad = 250;
float x[] = new float[amount];
PImage img;
float y[] = new float[amount];
float velx[] = new float[amount];
float vely[] = new float[amount];
int R=1;
void setup() {
  for (byte i = 0; i < amount; i++) {
    x[i] = 500;
    y[i] = 250;
    velx[i] = random(2, 5)*((byte)random(0, 2) == 0 ? 1:-1);
    vely[i] = random(2, 5)*((byte)random(0, 2) == 0 ? 1:-1);
  }
  size(1000, 500);
  colorMode(HSB, 360, 100, 100);
  surface.setTitle("pattern");     //230 27 83 в 89 39
  smooth(6);
  img = loadImage("ellipses.jpg");
}
void draw() { 
  background(img);
  for (byte i = 0; i < amount; i++) {
    x[i] += velx[i];
    y[i] += vely[i];
    if (x[i] < R || x[i] > width-R) velx[i] = -velx[i];
    if (y[i] < R || y[i] > height-R) vely[i] = -vely[i];
    circle(x[i], y[i], R*2);
  }
  for (byte i = 0; i < amount; i++) {
    for (byte j = 0; j < i; j++) {
      float distance = dist(x[i], y[i], x[j], y[j]);
      if (distance < rad) {
        strokeWeight(map(distance, 0, rad, 6, 0.3));
        stroke(230, (map(distance, 0, rad, 90, 27)), (map(distance, 0, rad, 30, 83)));
        line(x[i], y[i], x[j], y[j]);
      }
    }
  }
}
