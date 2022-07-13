class bulb {
  float x, y;
  junction j1;
  bulb(float _x, float _y) {
    x = _x;
    y = _y;
    j1 = new junction(x - 55, y, false, 0);
  }
  void show() {
    strokeWeight(1);
    ellipseMode(RADIUS);
    if (j1.a == true)
      fill(255, 255, 0);
    ellipse(x, y, 25, 25);
    line((x - 25) - 30, y, (x - 25), y);

    fill(255);
  }
  boolean cheakcol(float X, float Y, int val){
    if(dist(X,Y,x,y) <= 25){
      del(Bulb.get(val), val);
      return true;
    }
    return false;
  }
};
