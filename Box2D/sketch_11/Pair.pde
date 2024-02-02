class Pair{
  Body body;
  
  Box p1;
  Box p2;
  
  Pair(float x, float y){
    
    p1 = new Box(x, y);
    p2 = new Box(x+random(-100, 100), y+random(-100,100));
    
    DistanceJointDef djd1 = new DistanceJointDef();
    
    djd1.bodyA = p1.body;
    djd1.bodyB = p2.body;
    
    djd1.length = 10;
    
    DistanceJoint dj1 = (DistanceJoint)box2d.world.createJoint(djd1);
  }
    
    void display(){
      Vec2 pos1 = box2d.getBodyPixelCoord(p1.body);
      Vec2 pos2 = box2d.getBodyPixelCoord(p2.body);
      stroke(0);
      strokeWeight(2);
      line(pos1.x, pos1.y, pos2.x, pos2.y);
      p1.display();
      p2.display();
    }
  }
      
