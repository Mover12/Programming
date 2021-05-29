void keyPressed() {
  if (mode != 4 && key == 'a') mode = 1;
  else if (mode != 3 && key == 'w') mode = 2;
  else if (mode != 2 && key == 's') mode = 3;
  else if (mode != 1 && key == 'd') mode = 4;
}
void rendering() {
  for (int y = 0; y < height; y += a) { 
    for (int x = 0; x < width; x += a) {      
      newY = y/a;
      newX = x/a;
      if (array[newY][newX] > 0) array[newY][newX] -= 1;
      if (array[newY][newX] == 0) fill(#56814F);
      else if (array[newY][newX] == -2) exit();
      else if (array[newY][newX] == -3) fill(#4EA52D);
      else if (array[newY][newX] == -4) {
        lenght++; 
        array[(int)random(1, 14)][(int)random(1, 24)] = -3;
      }
      else fill(30);      
      rect(x, y, a, a);
    }
  }
  fill(255);
  text("Score:",5,38);
  text(lenght - 4, 145, 40);
}
