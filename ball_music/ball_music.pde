import ddf.minim.*;
import ddf.minim.ugens.*;

int numBalls = 20;
String Notes[] = {"C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5"};

Ball[] balls = new Ball[numBalls];

void setup(){
  size(1000, 600);
  for(int i = 0; i<balls.length; i++){
    float x  = 25 + i* width/numBalls;
    float rate = 2.0 + i * 0.1;
    balls[i] = new Ball(x, height/2, 20, rate, Notes[19-i]);
  }
  noStroke();
}

void draw(){
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  for (int i =0; i < balls.length; i++) {
    balls[i].update();
    balls[i].display();
  }
}
