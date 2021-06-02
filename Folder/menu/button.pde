void difficulty(int s) {
  switch(s) {
  case 0: 
    h = 20; 
    w = 30; 
    a = 1057.5/w;
    array = new int[h][w];
    bufer = new int [h][w];
    break;
  case 1: 
    h = 80; 
    w = 120; 
    a = 1057.5/w;
    array = new int[h][w];
    bufer = new int [h][w];
    break;
  case 2: 
    h = 320; 
    w = 480; 
    a = 1057.5/w;
    array = new int[h][w];
    bufer = new int [h][w];
    break;
  }
}
void grid(boolean g) {
  if (g)stroke(stroke);
  else noStroke();
}
void thema(boolean d) {
  if (d) {
    life = #048B05; 
    died = 0;
    stroke = #164D16;
    stroke(stroke);
    menu = 5;
  } else { 
    menu = 100;
    life = 0; 
    died = 255; 
    stroke = 100;
    stroke(stroke);
  }
}
void random(boolean r) {
  if (r) {
    nr = false;
    for (int x = 0; x < w; x++) {
      for (int y = 0; y < h; y++) {
        array[y][x]=(int)random(2);
      }
    }
  }else nr = true;
}
void start() {
  if (c) c = false;
  else c = true;
}
void clear() {
  array = new int[h][w];
  c = false;
}
void framerate(int i) {
  f = i;
}
