import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;


ArrayList<Box> boxes;
Boundary boundary;

Box2DProcessing box2d;

void setup() {
  size(500,400);
  box2d = new Box2DProcessing(this);  
  box2d.createWorld();
  
  boxes = new ArrayList<Box>();
  boxes.add(new Box(240,20));
  boxes.add(new Box(265,20));
  
  boundary = new Boundary(250,300,10,10);
}

void draw() {
  background(255);
  box2d.step();
  
  for(Box b: boxes){
    b.display();
  }
  
  boundary.display();
}
