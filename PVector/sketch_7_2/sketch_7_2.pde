PVector v1;
float angle1 = 0.01;

void setup() {
  size(500, 500);
  v1 = new PVector(100,100);
  frameRate(60);
  noStroke();
}

void draw(){
  background(0);
  //translate(###, ###);
  fill(255,10,10);
  circle(0,0,50);
  fill(0, 200, 100);
  //circle(####, ####, 20);
  //v1.rotate(######);
}
