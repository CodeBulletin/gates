class XNOR {
  float x, y;
  junction j1, j2, j3;
  XNOR(float _x, float _y) {
    x = _x;
    y = _y;
    j1 = new junction(x-80, y-20, false, 0);
    j2 = new junction(x-80, y+20, false, 0);
    j3 = new junction(x+80, y, false, 2);
  }
  void show() {
    strokeWeight(1);
    rectMode(CENTER);
    rect(x, y, 80, 60);
    line((x-40) - 40, y + 20, (x - 40), y + 20);
    line((x-40) - 40, y - 20, (x - 40), y - 20);
    line((x+40), y, (x + 40) + 40, y);
    fill(0);
    textSize(24);
    text("XNOR", x-34, y+10);
    fill(255);
    xor();
  }
  void xor() {
    if ((j1.a == false && j2.a == true)||(j2.a == false && j1.a == true)) {
      j3.a = false;
    } else {
      j3.a = true;
    }
  }
  boolean cheakcol(float X, float Y, int val) {
    if ((X < x + 40 && X > x - 40)&&(Y < y + 30 && Y > y - 30)) {
      del(xnorg.get(val), val);
      return true;
    }
    return false;
  }
};
