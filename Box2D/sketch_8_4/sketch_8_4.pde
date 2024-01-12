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
  boxes.add(new Box(240,20));
  boxes.add(new Box(265,20));
  
  boundaries = new ArrayList<Boundary>();
  boundaries.add(new Boundary(230,90,10,10));
  boundaries.add(new Boundary(260,150,10,10));
  boundaries.add(new Boundary(290,250,10,10));
  boundaries.add(new Boundary(330,300,100,10));
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
