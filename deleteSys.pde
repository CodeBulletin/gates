void del(Object s, int val) {
  if (s.getClass() == AND.class) {
    AND m = (AND) s;
    delx(m.j1, m.j2, m.j3);
    andg.remove(val);
  } else if (s.getClass() == OR.class) {
    OR m = (OR) s;
    delx(m.j1, m.j2, m.j3);
    org.remove(val);
  } else if (s.getClass() == NAND.class) {
    NAND m = (NAND) s;
    delx(m.j1, m.j2, m.j3);
    nandg.remove(val);
  } else if (s.getClass() == NOR.class) {
    NOR m = (NOR) s;
    delx(m.j1, m.j2, m.j3);
    norg.remove(val);
  } else if (s.getClass() == XOR.class) {
    XOR m = (XOR) s;
    delx(m.j1, m.j2, m.j3);
    xorg.remove(val);
  } else if (s.getClass() == XNOR.class) {
    XNOR m = (XNOR) s;
    delx(m.j1, m.j2, m.j3);
    xnorg.remove(val);
  } else if (s.getClass() == NOT.class) {
    NOT m = (NOT) s;
    delx(m.j1, m.j2);
    notg.remove(val);
  } else if (s.getClass() == Switch.class) {
    Switch m = (Switch) s;
    delx(m.j1);
    swt.remove(val);
  } else if (s.getClass() == Osilator.class) {
    Osilator m = (Osilator) s;
    delx(m.j1);
    Osl.remove(val);
  } else if (s.getClass() == bulb.class) {
    bulb m = (bulb) s;
    delx(m.j1);
    Bulb.remove(val);
  } else if (s.getClass() == junction.class) {
    junction m = (junction) s;
    delxy(m);
    junc.remove(val);
  } else if (s.getClass() == counter.class) {
    counter m = (counter) s;
    delx(m.j1, m.j2, m.j3, m.j4);
    con.remove(val);
  }
}

void delx(junction j1, junction j2, junction j3, junction j4) {
  int cppx = joinx.size();
  for (int k = 0; k < cppx; k++) {
    if (joinx.get(k).j1 == j1 || joinx.get(k).j2 == j1) {
      joinx.remove(k);
      --cppx;
      --k;
    } else if (joinx.get(k).j1 == j2 || joinx.get(k).j2 == j2) {
      joinx.remove(k);
      --cppx;
      --k;
    } else if (joinx.get(k).j1 == j3 || joinx.get(k).j2 == j3) {
      joinx.remove(k);
      --cppx;
      --k;
    } else if (joinx.get(k).j1 == j4 || joinx.get(k).j2 == j4) {
      joinx.remove(k);
      --cppx;
      --k;
    }
  }
  int cpp = junc.size();
  for (int k = 0; k < cpp; k++) {
    if (junc.get(k) == j1) {
      junc.remove(k);
      --cpp;
      --k;
    } else if (junc.get(k) == j2) {
      junc.remove(k);
      --cpp;
      --k;
    } else if (junc.get(k) == j3) {
      junc.remove(k);
      --cpp;
      --k;
    } else if (junc.get(k) == j4) {
      junc.remove(k);
      --cpp;
      --k;
    }
  }
}
void delx(junction j1, junction j2, junction j3) {
  int cppx = joinx.size();
  for (int k = 0; k < cppx; k++) {
    if (joinx.get(k).j1 == j1 || joinx.get(k).j2 == j1) {
      joinx.remove(k);
      --cppx;
      --k;
    } else if (joinx.get(k).j1 == j2 || joinx.get(k).j2 == j2) {
      joinx.remove(k);
      --cppx;
      --k;
    } else if (joinx.get(k).j1 == j3 || joinx.get(k).j2 == j3) {
      joinx.remove(k);
      --cppx;
      --k;
    }
  }
  int cpp = junc.size();
  for (int k = 0; k < cpp; k++) {
    if (junc.get(k) == j1) {
      junc.remove(k);
      --cpp;
      --k;
    } else if (junc.get(k) == j2) {
      junc.remove(k);
      --cpp;
      --k;
    } else if (junc.get(k) == j3) {
      junc.remove(k);
      --cpp;
      --k;
    }
  }
}
void delx(junction j1, junction j2) {
  int cppx = joinx.size();
  for (int k = 0; k < cppx; k++) {
    if (joinx.get(k).j1 == j1 || joinx.get(k).j2 == j1) {
      joinx.remove(k);
      --cppx;
      --k;
    } else if (joinx.get(k).j1 == j2 || joinx.get(k).j2 == j2) {
      joinx.remove(k);
      --cppx;
      --k;
    }
  }
  int cpp = junc.size();
  for (int k = 0; k < cpp; k++) {
    if (junc.get(k) == j1) {
      junc.remove(k);
      --cpp;
      --k;
    } else if (junc.get(k) == j2) {
      junc.remove(k);
      --cpp;
      --k;
    }
  }
}
void delx(junction j1) {
  int cppx = joinx.size();
  for (int k = 0; k < cppx; k++) {
    if (joinx.get(k).j1 == j1 || joinx.get(k).j2 == j1) {
      joinx.remove(k);
      --cppx;
      --k;
    }
  }
  int cpp = junc.size();
  for (int k = 0; k < cpp; k++) {
    if (junc.get(k) == j1) {
      junc.remove(k);
      --cpp;
      --k;
    }
  }
}
void delxy(junction j1) {
  int cppx = joinx.size();
  for (int k = 0; k < cppx; k++) {
    if (joinx.get(k).j1 == j1 || joinx.get(k).j2 == j1) {
      joinx.remove(k);
      --cppx;
      --k;
    }
  }
}
