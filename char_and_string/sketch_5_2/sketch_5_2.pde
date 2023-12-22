String keyPad = "qwertyuiop[]asdfghjkl;'zxcvbnm,./";
String table = "가나다라마바사ABCDEFGHIJKLMNOPQRSTUVWXYZ";
char[] result = new char[table.length()];

void setup(){
  for(int i=0; i<result.length; i++){
    result[i] = table.charAt(i);
  }
}

void draw(){
}

void keyPressed(){
  for(int i=0; i<keyPad.length(); i++){
    if(key == /////////////////){
      println(result[i]);
    }
  }
}
