class junction {
  float x, y;
  boolean a, joinable;
  int type;
  boolean power, powerable; 
  junction(float _x, float _y, boolean p, int t) {
    x = _x;
    y = _y;
    a = p;
    joinable = false;
    type = t;
    if(type == 2){
      power = true;
    } else {
      power = false;
    }
  }
  void show() {
    strokeWeight(1);
    ellipseMode(RADIUS);
    if (joinable == true) {
      fill(0, 255, 255);
    } else if (a != false) {
      fill(255, 0, 0);
    }
    ellipse(x, y, 10, 10);
    fill(255);
  }
  void button(float X, float Y) {
    if (mousePressed) {
      if (dist(X, Y, x, y) <= 10) {
        joinable =! joinable;
      }
    }
  }
  boolean cheakcol(float X, float Y, int val) {
    if (dist(X, Y, x, y) <= 25) {
      del(junc.get(val), val);
      return true;
    }
    return false;
  }
};
