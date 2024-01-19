import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;


ArrayList<Box> boxes;

Box2DProcessing box2d;

void setup() {
  size(500,400);
  box2d = new Box2DProcessing(this);  
  box2d.createWorld();
  
  boxes = new ArrayList<Box>();
}

void draw() {
  background(255);
  box2d.step();
  
  if(mousePressed){
    boxes.add(new Box(mouseX, mouseY, mouseButton));
  }
  
  for(Box b: boxes){
    b.display();
  }
}
