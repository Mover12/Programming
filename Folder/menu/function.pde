void logic() {
  for (byte x = 0; x < w; x++) {
    for (byte y = 0; y < h; y++) {
      neighbour = 0; 
      for (int nx = x-1; nx <= x+1; nx++) {
        for (int ny = y-1; ny <= y+1; ny++) {  
          if (((nx>=0)&&(nx<w))&&((ny>=0)&&(ny<h))) {
            if (!((nx == x)&&(ny == y))) { 
              if (array[ny][nx] == 1) {
                neighbour ++;
              }
            }
          }
        }
      }
      bufer[y][x] = neighbour;
    }
  }
} 
void initialization() {
  for (byte x = 0; x < w; x++) {
    for (byte y = 0; y < h; y++) {
      if (bufer[y][x] == 3)array[y][x]=1;
      else if (bufer[y][x] == 2 && array[y][x] == 1)array[y][x]=1;
      else array[y][x] = 0;
    }
  }
}
void rendering() {
  for (byte x = 0; x < w; x++) {
    for (byte y = 0; y < h; y++) {
      if (array[y][x] == 1) fill(life);
      else fill(died);
      square((x*a)+308.5, y*a, a);
    }
  }
}
void paint() {
  if (mouseX > 308.5 && mouseX < width && mouseY > 0 && mouseY < height) {
    if (mouseButton == LEFT)array[int(mouseY/a)][int((mouseX - 308.5)/a)] = 1;
    else if(mouseButton == RIGHT)array[int(mouseY/a)][int((mouseX-308.5)/a)] = 0;
  }
}
