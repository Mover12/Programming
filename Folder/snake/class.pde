void keyPressed() {
  if (mode != 4 && key == 'a') mode = 1;
  else if (mode != 3 && key == 'w') mode = 2;
  else if (mode != 2 && key == 's') mode = 3;
  else if (mode != 1 && key == 'd') mode = 4;
}
void rendering() {
  for (int y = 0,ny; y < height; y += a) { 
    for (int x = 0,nx; x < width; x += a) {
      ny=y/a;
      nx=x/a;
      if (array[ny][nx] > 0) array[ny][nx] -= 1;
      if (array[ny][nx] == 0) fill(#56814F);
      else if (array[ny][nx] == -2) died = true;
      else if (array[ny][nx] == -3) fill(#4EA52D);
      else if (array[ny][nx] == -4) {
        lenght++; 
        array[(int)random(1, 14)][(int)random(1, 24)] = -3;
      }
      else fill(30);      
      rect(x, y, a, a);
    }
  }
  fill(255);
  text("Score: "+(lenght - 4),5,38);
}
