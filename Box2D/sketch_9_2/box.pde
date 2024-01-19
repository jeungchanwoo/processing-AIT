class Box {
  float x, y;
  float w,h;
  
  Body body;

  Box(float _x, float _y, int m) {
    x = _x;
    y = _y;
    w = 20;
    h = 20;

    // Build Body
    BodyDef bd = new BodyDef();
    if(m==LEFT)
      bd.type = BodyType.DYNAMIC;
    else
      bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    body = box2d.createBody(bd);
    
   // Define a polygon
    /*PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW, box2dH);*/
    
    CircleShape sd = new CircleShape();
    sd.m_radius=box2d.scalarPixelsToWorld(w/2);
    
    // Define a fixture
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 0.2;
    fd.restitution = 0.2;

    // Attach Fixture to Body               
    body.createFixture(fd);
  }

  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();

    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);
    stroke(0);
    rectMode(CENTER);
    rect(0,0,w,h);
    popMatrix();
  }

}
