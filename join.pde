class joinj {
  junction j1, j2;
  joinj(junction _j1, junction _j2) {
    j1 = _j1;
    j2 = _j2;
  }
  void show() {
    line(j1.x, j1.y, j2.x, j2.y);
    if(j1.type > j2.type){
      j2.a = j1.a;
    }
    if(j1.type < j2.type){
      j1.a = j2.a;
    } else if (j1.type == 1 && j2.type == 1) {
      if(j1.a == true && j2.a == false){
        j2.a = j1.a;
      } else if(j2.a == true && j1.a == false){
        j1.a = j2.a;
      }
    }
  }
};
void joinablecheak() {
  int two = 0;
  for (junction j : junc) {
    if (j.joinable == true) {
      two += 1;
      if (two == 1) {
        jx1 = j;
      } else if (two == 2) {
        jx2 = j;
      }
    }
  }
  if (two == 2) {
    boolean setflag = false;
    for (joinj j : joinx) {
      if ((j.j1 == jx1 || j.j2 == jx1)&&(j.j1 == jx2 || j.j2 == jx2)) {
        setflag = true;
      }
    }
    if (((jx1.type != jx2.type)||(jx1.type == 1 && jx2.type == 1))&&setflag == false) { 
      joinx.add(new joinj(jx1, jx2));
    }
    jx1.joinable = false;
    jx2.joinable = false;
  }
}
