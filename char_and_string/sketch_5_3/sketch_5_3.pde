import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;

String keyPad = "qwertyuiop[]asdfghjkl;'zxcvbnm,./";
String[] note = new String[keyPad.length()];
char[] tone = {'C', 'D', 'E', 'F', 'G', 'A', 'B'};
char[] num = {'2', '3', '4', '5', '6'};
int count = 0;

void setup(){
  minim = new Minim(this);
  out = minim.getLineOut();
  
  for(int i=0; i<num.length; i++){
    for(int j=0; j<tone.length; j++){
        note[count] = "" + tone[j] + num[i];
    }
  }
}

void draw(){
}

void keyPressed(){
  for(int i=0; i<note.length; i++){
    if(key == keyPad.charAt(i)){
      out.playNote(0.0, 1.0, note[i]);
    }
  }
}
