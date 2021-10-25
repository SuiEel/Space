
class Spaceship {
  PShape object;
  float rotateY = PI/2;
  float rotateZ = PI;
  float x;
  float y;
  float z = - 200;
  
  void object() {
    object = loadShape("cargo transport 3.obj");
  }
  
  void move(){
    translate(x, y, z);
    z += .5;
    }

  
  void spin(){
    rotateY(rotateY);
    rotateZ(rotateZ);
    rotateY += .01;
  }
  
  void display(){
    scale(.1);
    shape(object, 2000, 0);
  }
}
    