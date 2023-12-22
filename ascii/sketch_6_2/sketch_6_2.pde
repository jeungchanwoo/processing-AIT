import processing.video.*;

String str=".`-_':,;^=+/\"|)\\<>)iv%xclrs{*}I?!][1taeo7zjLunT#JCwfy325Fp6mqSghVd4EgXPGZbYkOA&8U$@KHDBWNMR0Q"; //93
int cellSize = 10;
int cols, rows;
Capture video;


void setup() {
  size(640, 480);
  cols = width / cellSize;
  rows = height / cellSize;
  colorMode(RGB, 255, 255, 255, 100);
  rectMode(CENTER);
  video = new Capture(this, width, height);
  video.start(); 
  background(0);
  textSize(15);
}


void draw() { 
  if (video.available()) {
    video.read();
    video.loadPixels();
    
    background(0);

    for (int i = 0; i < cols;i++) {
      for (int j = 0; j < rows;j++) {
        int x = i * cellSize;
        int y = j * cellSize;
        int loc = (video.width - x - 1) + y*video.width;
        color c = video.pixels[loc];
        int sz = int((brightness(c) / 255.0) * 92);
        fill(255);
        noStroke();
        text(str.charAt(sz),x + cellSize/2, y + cellSize/2);
      }
    }
  }
}
