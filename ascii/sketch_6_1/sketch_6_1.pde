char[] chars ={'@', 'W', 'G', 'S', 'N', '9', 'P', 'd', '3', 'a', '4', 's', 'u', 'x', '1', 'j', 'i', '*', '+', '-', '.'};
String loadPath = "Lenna.png";
PImage picture;
int devisions = 5;
String myText = "";
PrintWriter output;

void setup() {
  picture = loadImage(loadPath); 
  output = createWriter("pin.txt");
  size(500, 500);
}

void draw() {
  background(255);
  for (int i = 0; i < height; i+= devisions) {
    for (int j = 0; j < width; j+= devisions) {
      color filler = picture.get(int(j), int(i));
      int r = (filler & 0x00ff0000) / 65536;
      int g = (filler & 0x0000ff00) / 256;
      int b = filler & 0x000000ff;
      int gray = (r + g + b)/3;
      fill(0);
      textAlign(CENTER);
      char charac = chars[int(gray/12.75)];
      myText += charac;
      text(charac, (j), (i));
    }
    myText += "\r\n";
  }
  output.print(myText);                              
  output.close();
}
