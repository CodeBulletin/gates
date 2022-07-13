class Osilator {
  float x, y;
  int delay;
  junction j1;
  int i;
  Osilator(float _x, float _y, int _delay) {
    x = _x;
    y = _y;
    delay = _delay;
    i = 0;
    j1 = new junction(x+55, y, false, 2);
  }
  void show() {
    strokeWeight(1);
    ellipseMode(RADIUS);
    fill(255);
    osl();
    ellipse(x, y, 25, 25);
    if (j1.a == true)
      fill(255, 0, 0);
    ellipse(x, y, 20, 20);
    line((x + 25) + 30, y, (x + 25), y);
    fill(255);
  }
  boolean cheakcol(float X, float Y, int val) {
    if (dist(X, Y, x, y) <= 25) {
      del(Osl.get(val), val);
      return true;
    }
    return false;
  }
  void osl(){
    if(i >= delay){
      i = 0;
      j1.a = !j1.a;
    }
    i++;
  }
};
