class NOR {
  float x, y;
  junction j1, j2, j3;
  NOR(float _x, float _y) {
    x = _x;
    y = _y;
    j1 = new junction(x-80, y-20, false, 0);
    j2 = new junction(x-80, y+20, false, 0);
    j3 = new junction(x+80, y, true, 2);
  }
  void show() {
    strokeWeight(1);
    rectMode(CENTER);
    rect(x, y, 80, 60);
    line((x-40) - 40, y + 20, (x - 40), y + 20);
    line((x-40) - 40, y - 20, (x - 40), y - 20);
    line((x+40), y, (x + 40) + 40, y);
    fill(0);
    textSize(32);
    text("NOR", x-34, y+12);
    fill(255);
    nor();
  }
  void nor() {
    if (j1.a == true || j2.a == true) {
      j3.a = false;
    } else {
      j3.a = true;
    }
  }
  boolean cheakcol(float X, float Y, int val) {
    if ((X < x + 40 && X > x - 40)&&(Y < y + 30 && Y > y - 30)) {
      del(norg.get(val), val);
      return true;
    }
    return false;
  }
};
