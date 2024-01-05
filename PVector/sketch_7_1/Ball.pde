class Ball {
  float x;
  float y;
  float rad = 10;
  color col = color(255, 255, 0);
  int tran = 255;
  
  Ball(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  Ball(float _x, float _y, float _r){
    x = _x;
    y = _y;
    rad = _r;
  }
  
  Ball(float _x, float _y, float _r, color _c){
    x = _x;
    y = _y;
    rad = _r;
    col = _c;
  }
  
  Ball(float _x, float _y, float _r, color _c, int _t){
    x = _x;
    y = _y;
    rad = _r;
    col = _c;
    tran = _t;
  }
  
  void display(){
    background(255);
    fill(col, tran);
    circle(x, y, rad);
  }
}
