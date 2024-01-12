import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;


Box box;
Box2DProcessing box2d;

void setup() {
  size(500,400);
  box2d = new Box2DProcessing(this);  
  box2d.createWorld();
  
  box = new Box(250, 10);
}

void draw() {
  background(255);
  box2d.step();
  
  box.display();
}
