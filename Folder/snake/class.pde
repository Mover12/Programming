void keyPressed(){
 if(mode != 4 && key == 'a') mode = 1;
 else if(mode != 3 && key == 'w') mode = 2;
 else if(mode != 2 && key == 's') mode = 3;
 else if(mode != 1 && key == 'd') mode = 4;
}
void rendering() {
  for (float y = 0; y < height; y += a) {
    for (float x = 0; x < width; x += a) {      
      newY = (int)y/a;//Зачем повторять дни и теже вычисления 100 раз
      newX = (int)x/a;// Что за говнокодер это писал... А точно
      if (array[newY][newX] > 0) array[newY][newX] -= 1;
      if (array[newY][newX] == 0) fill(#56814F);
      else if (array[newY][newX] == -2) exit();
      else fill(30);      
      rect(x, y, a, a);
    }
  }
}
