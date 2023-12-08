class Ball {
  Minim minim;
  AudioOutput out;
  
  float x;
  float y;
  float diameter;
  float speed;
  int direction = 1;
  String note = "  ";
  
  Ball(float _x, float _y, float _d, float _s, String _n){
    x = _x;
    y = _y;
    diameter = _d;
    speed = _s;
    note = _n;
    
    minim = new Minim(this);
    out = minim.getLineOut();
  }
  
  void update(){
    y += (speed * direction);
    if (y > height || y < 0) {
      direction *= -1;
      out.playNote( 0.0, 0.5, note);
    }
  }
  
  void display(){
    ellipse(x, y, diameter, diameter);
  }
}
