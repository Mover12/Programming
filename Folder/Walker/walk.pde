float R=25;
void walk() {
  loc.add(vel);
  if (loc.x-R < 0 || loc.x+R >width ) {
    vel.x = vel.x*-1;
  }
  if (loc.y-R < 0 || loc.y+R >height ) {
    vel.y = vel.y*-1;
  }
  circle(loc.x, loc.y, R*2);
}
