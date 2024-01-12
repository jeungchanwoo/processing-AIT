import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;


ArrayList<Box> boxes;
ArrayList<Boundary> boundaries;

Box2DProcessing box2d;

void setup() {
  size(500,400);
  box2d = new Box2DProcessing(this);  
  box2d.createWorld();
  
  boxes = new ArrayList<Box>();
  for(int i=1; i<=10; i++){
    boxes.add(new Box(40*i+30, 370));
  }
  
  boundaries = new ArrayList<Boundary>();
  boundaries.add(new Boundary(250,380,400,10));
}

void draw() {
  background(255);
  box2d.step();
  
  for(Box b: boxes){
    b.display();
  }
  
  for(Boundary b: boundaries){
    b.display();
  }
}
