void addjunction() {
  for (counter a : con) {
    junctionadder(a.j1, a.j2, a.j3, a.j4);
  }
  for (AND a : andg) {
    junctionadder(a.j1, a.j2, a.j3);
  }
  for (OR a : org) {
    junctionadder(a.j1, a.j2, a.j3);
  }
  for (NAND a : nandg) {
    junctionadder(a.j1, a.j2, a.j3);
  }
  for (NOR a : norg) {
    junctionadder(a.j1, a.j2, a.j3);
  }
  for (XOR a : xorg) {
    junctionadder(a.j1, a.j2, a.j3);
  }
  for (XNOR a : xnorg) {
    junctionadder(a.j1, a.j2, a.j3);
  }
  for (NOT a : notg) {
    junctionadder(a.j1, a.j2);
  }
  for (Switch a : swt) {
    junctionadder(a.j1);
  }
  for (Osilator a : Osl) {
    junctionadder(a.j1);
  }
  for (bulb a : Bulb) {
    junctionadder(a.j1);
  }
}
void junctionadder(junction j1) {
  boolean c1 = true;
  for (junction b : junc) {
    if (b == j1) {
      c1 = false;
      break;
    }
  }
  if (c1 == true) {
    junc.add(j1);
  }
}
void junctionadder(junction j1, junction j2) {
  boolean c1 = true, c2 = true;
  for (junction b : junc) {
    if (b == j1) {
      c1 = false;
      break;
    }
  }
  for (junction b : junc) {
    if (b == j2) {
      c2 = false;
      break;
    }
  }
  if (c1 == true) {
    junc.add(j1);
  }
  if (c2 == true) {
    junc.add(j2);
  }
}
void junctionadder(junction j1, junction j2, junction j3) {
  boolean c1 = true, c2 = true, c3 = true;
  for (junction b : junc) {
    if (b == j1) {
      c1 = false;
      break;
    }
  }
  for (junction b : junc) {
    if (b == j2) {
      c2 = false;
      break;
    }
  }
  for (junction b : junc) {
    if (b == j3) {
      c3 = false;
      break;
    }
  }
  if (c1 == true) {
    junc.add(j1);
  }
  if (c2 == true) {
    junc.add(j2);
  }
  if (c3 == true) {
    junc.add(j3);
  }
}
void junctionadder(junction j1, junction j2, junction j3, junction j4) {
  boolean c1 = true, c2 = true, c3 = true, c4 = true;
  for (junction b : junc) {
    if (b == j1) {
      c1 = false;
      break;
    }
  }
  for (junction b : junc) {
    if (b == j2) {
      c2 = false;
      break;
    }
  }
  for (junction b : junc) {
    if (b == j3) {
      c3 = false;
      break;
    }
  }
  for (junction b : junc) {
    if (b == j4) {
      c4 = false;
      break;
    }
  }
  if (c1 == true) {
    junc.add(j1);
  }
  if (c2 == true) {
    junc.add(j2);
  }
  if (c3 == true) {
    junc.add(j3);
  }
  if (c4 == true) {
    junc.add(j4);
  }
}
