import controlP5.*;
ControlP5 cp5;
int h = 20, w = 30;
float a = 1057.5/w;
boolean c = true;
boolean nr = true;
color menu = 100, life = 0, died = 255, stroke = 100;
String list[] = {"EASY 30x20", "MEDIUM 120x80", "HARD 480x320"};
int neighbour;
int array[][]; 
int bufer[][];
void setup() {
  array = new int[h][w];
  bufer = new int [h][w];
  size(1366, 705);
  stroke(stroke);  
  frameRate(15);
  surface.setResizable(true);
  cp5 = new ControlP5(this);
  cp5.setFont(createFont("Calibri", 20));  

  cp5.addScrollableList("difficulty")
    .setPosition(10, 30)
    .setSize(280, 100)
    .setBarHeight(40)
    .setItemHeight(30)
    .addItems(list);

  cp5.addToggle("grid")
    .setSize(100, 20)
    .setPosition(10, 140);

  cp5.addToggle("thema")
    .setSize(100, 20)
    .setPosition(10, 200);

  cp5.addToggle("random")
    .setSize(100, 20)
    .setPosition(10, 260);

  cp5.addButton("start")
    .setSize(290, 30)
    .setPosition(10, 650);

  cp5.addButton("clear")
    .setSize(290, 30)
    .setPosition(10, 610);

  cp5.addSlider("framerate")
    .setPosition(150, 140)
    .setSize(20, 140)
    .setRange(1, 29)
    .setNumberOfTickMarks(15)
    .setValue(15);
}
void draw() {
  fill(menu);
  rect(0, 0, 308.5, height);
  if(nr && mousePressed)paint();
  if (c) {
    logic();
    initialization();
  }
  rendering();
}
