class counter {
  float x, y;
  int val, a, b, c, d;
  junction j1, j2, j3, j4;
  counter(float _x, float _y) {
    x = _x;
    y = _y;
    j1 = new junction(x-80, y+45, false, 0);
    j2 = new junction(x-80, y+15, false, 0);
    j3 = new junction(x-80, y-15, false, 0);
    j4 = new junction(x-80, y-45, false, 0);
  }
  void show() {
    makeval();
    strokeWeight(2);
    rectMode(CENTER);
    rect(x, y, 80, 60);
    line((x-40) - 40, y + 15, (x - 40), y + 15);
    line((x-40) - 40, y - 15, (x - 40), y - 15);
    line((x-40) - 40, y + 45, (x - 40) - 20, y + 45);
    line((x-40) - 20, y + 45, (x - 40), y + 30);
    line((x-40) - 40, y - 45, (x - 40) - 20, y - 45);
    line((x-40) - 20, y - 45, (x - 40), y - 30);
    fill(0);
    textSize(32);
    String temp = String.format(" %02d", val);
    text(temp, x-32, y+12);
    fill(255);
  }
  void makeval() {
    if (j1.a == true) {
      a = 1;
    } else {
      a = 0;
    }
    if (j2.a == true) {
      b = 1;
    } else {
      b = 0;
    }
    if (j3.a == true) {
      c = 1;
    } else {
      c = 0;
    }
    if (j4.a == true) {
      d = 1;
    } else {
      d = 0;
    }
    val = a*1 + b*2 + c*4 + d*8;
  }
  boolean cheakcol(float X, float Y, int val) {
    if ((X < x + 40 && X > x - 40)&&(Y < y + 30 && Y > y - 30)) {
      del(con.get(val), val);
      return true;
    }
    return false;
  }
};
