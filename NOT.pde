class NOT {
  float x, y;
  junction j1, j2;
  NOT(float _x, float _y) {
    x = _x;
    y = _y;
    j1 = new junction(x-55, y, false, 0);
    j2 = new junction(x+55, y, true, 2);
  }
  void show() {
    strokeWeight(1);
    rectMode(CENTER);
    rect(x, y, 50, 40);
    line((x - 25) - 30, y, (x - 25), y);
    line((x + 25) + 30, y, (x + 25), y);
    fill(0);
    textSize(22);
    text("NOT", x-24, y+8);
    fill(255);
    not();
  }
  void not() {
    if (j1.a == true) {
      j2.a = false;
    } else {
      j2.a = true;
    }
  }
  boolean cheakcol(float X, float Y, int val) {
    if ((X < x + 25 && X > x - 25)&&(Y < y + 20 && Y > y - 25)) {
      del(notg.get(val), val);
      return true;
    }
    return false;
  }
};
