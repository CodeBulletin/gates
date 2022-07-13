class Switch {
  float x, y;
  junction j1;
  Switch(float _x, float _y) {
    x = _x;
    y = _y;
    j1 = new junction(x+50, y, false, 2);
  }
  void show() {
    strokeWeight(1);
    rectMode(CENTER);
    if (j1.a == true)
      fill(255, 0, 0);
    rect(x, y, 40, 40);
    line((x+20), y, (x+20)+30, y);
    fill(255);
  }
  void cheackswitch(float X, float Y) {
    if ((X < x + 20 && X > x - 20)&&(Y < y + 20 && Y > y - 20)) {
      if (mousePressed) {
        j1.a = !j1.a;
      }
    }
  }
  boolean cheakcol(float X, float Y, int val) {
    if ((X < x + 20 && X > x - 20)&&(Y < y + 20 && Y > y - 20)) {
      del(swt.get(val), val);
      return true;
    }
    return false;
  }
};
