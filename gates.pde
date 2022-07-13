import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

ArrayList<AND> andg;
ArrayList<OR> org;
ArrayList<NOT> notg;
ArrayList<NAND> nandg;
ArrayList<NOR> norg;
ArrayList<XOR> xorg;
ArrayList<XNOR> xnorg;
ArrayList<Switch> swt;
ArrayList<Osilator> Osl;
ArrayList<junction> junc;
ArrayList<bulb> Bulb;
ArrayList<counter> con;
ArrayList<joinj> joinx;
junction jx1, jx2;
float gpoc = 60;
int opt = -1;
int lop;
int delay;

void setup() {
  fullScreen();
  //stroke(255);
  delay = (int)frameRate; 
  andg = new ArrayList<AND>();
  org = new ArrayList<OR>();
  notg = new ArrayList<NOT>();
  nandg = new ArrayList<NAND>();
  norg = new ArrayList<NOR>();
  xorg = new ArrayList<XOR>();
  xnorg = new ArrayList<XNOR>();
  swt = new ArrayList<Switch>();
  Osl = new ArrayList<Osilator>();
  junc = new ArrayList<junction>();
  Bulb = new ArrayList<bulb>();
  con = new ArrayList<counter>();
  joinx = new ArrayList<joinj>();
}
void draw() {
  for (junction xs : junc) {
    if (xs.type == 1) {
      xs.a = false;
    }
  }
  background(200, 200, 200);
  strokeWeight(1);
  fill(255);
  rectMode(CORNER);
  rect(0, 0, 50, height);
  fill(255, 0, 0);
  rect(0, 50*(opt-1), 50, 50);
  fill(0);
  textSize(15);
  text("AND", 10, 30);
  text("OR", 15, 80);
  text("NOT", 10, 130);
  text("NAND", 4, 180);
  text("NOR", 10, 230);
  text("XOR", 10, 280);
  text("XNOR", 4, 330);
  text("Bulb", 9, 380);
  text("Switch", 2, 430);
  textSize(10.8);
  text("Oscillator", 1, 480);
  textSize(12.5);
  text("Display", 2, 530);
  textSize(12);
  text("Junction", 2, 580);
  textSize(15);
  text("Wire", 10, 630);
  text("Start", 7, 680);
  text("Delete", 1, 720); 
  for (int i = 0; i < height; i+=50) {
    line(0, i, 50, i);
  }
  line(50, 0, 50, height);
  fill(255);
  joinablecheak();
  addjunction();
  drawit();
  if (opt == 10) {
    rectMode(CORNERS);
    rect(60, 10, 240, 30);
    rect(60, 40, 120, 100);
    fill(0);
    textSize(20);
    text((gpoc - 60)/60, 240, 28);
    textSize(15);
    text("Sync all", 64, 75);
    fill(120, 120, 120);
    rect(60, 10, gpoc, 30);
  }
}
void mousePressed() {
  boolean dontallow = true;
  if (opt == 10) {
    if ((mouseX <= 240 && mouseX >= 60) && (mouseY <= 30 && mouseY >= 10)) {
      dontallow = false;
    }
    if ((mouseX <= 120 && mouseX >= 60) && (mouseY <= 100 && mouseY >= 40)) {
      for (Osilator s : Osl) {
        s.i = 0;
        s.j1.a = false;
      }
      dontallow = false;
    }
  }
  if (mouseX > 50 && dontallow) {
    if (opt == 1) {
      andg.add(new AND(mouseX, mouseY));
    }
    if (opt == 2) {
      org.add(new OR(mouseX, mouseY));
    }
    if (opt == 3) {
      notg.add(new NOT(mouseX, mouseY));
    }
    if (opt == 4) {
      nandg.add(new NAND(mouseX, mouseY));
    }
    if (opt == 5) {
      norg.add(new NOR(mouseX, mouseY));
    }
    if (opt == 6) {
      xorg.add(new XOR(mouseX, mouseY));
    }
    if (opt == 7) {
      xnorg.add(new XNOR(mouseX, mouseY));
    }
    if (opt == 8) {
      Bulb.add(new bulb(mouseX, mouseY));
    }
    if (opt == 9) {
      swt.add(new Switch(mouseX, mouseY));
    }
    if (opt == 10) {
      Osl.add(new Osilator(mouseX, mouseY, delay = (int)gpoc - 60));
    }
    if (opt == 11) {
      con.add(new counter(mouseX, mouseY));
    }
    if (opt == 12) {
      junc.add(new junction(mouseX, mouseY, false, 1));
    }
    if (opt == 13) {
      for (junction j : junc) {
        j.button(mouseX, mouseY);
      }
    }
    if (opt == 14) {
      for (Switch s : swt) {
        s.cheackswitch(mouseX, mouseY);
      }
    }
    if (opt == 15) {
      for (int k = 0; k < andg.size(); k++) {
        if (andg.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < Bulb.size(); k++) {
        if (Bulb.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < junc.size(); k++) {
        if (junc.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < nandg.size(); k++) {
        if (nandg.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < norg.size(); k++) {
        if (norg.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < xorg.size(); k++) {
        if (xorg.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < org.size(); k++) {
        if (org.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < con.size(); k++) {
        if (con.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < swt.size(); k++) {
        if (swt.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < Osl.size(); k++) {
        if (Osl.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < notg.size(); k++) {
        if (notg.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
      for (int k = 0; k < xnorg.size(); k++) {
        if (xnorg.get(k).cheakcol(mouseX, mouseY, k)) {
          break;
        }
      }
    }
  }
  if (mouseX < 50) {
    if (mouseY < 50) {
      opt = 1;
    } else if (mouseY > 50 && mouseY < 100) {
      opt = 2;
    } else if (mouseY > 100 && mouseY < 150) {
      opt = 3;
    } else if (mouseY > 150 && mouseY < 200) {
      opt = 4;
    } else if (mouseY > 200 && mouseY < 250) {
      opt = 5;
    } else if (mouseY > 250 && mouseY < 300) {
      opt = 6;
    } else if (mouseY > 300 && mouseY < 350) {
      opt = 7;
    } else if (mouseY > 350 && mouseY < 400) {
      opt = 8;
    } else if (mouseY > 400 && mouseY < 450) {
      opt = 9;
    } else if (mouseY > 450 && mouseY < 500) {
      opt = 10;
    } else if (mouseY > 500 && mouseY < 550) {
      opt = 11;
    } else if (mouseY > 550 && mouseY < 600) {
      opt = 12;
    } else if (mouseY > 600 && mouseY < 650) {
      opt = 13;
    } else if (mouseY > 650 && mouseY < 700) {
      opt = 14;
    } else {
      opt = 15;
    }
  }
}
void mouseDragged() {
  if (opt == 10) {
    if ((mouseX <= 240 && mouseX >= 60) && (mouseY <= 30 && mouseY >= 10)) {
      gpoc = mouseX;
    }
  }
}
