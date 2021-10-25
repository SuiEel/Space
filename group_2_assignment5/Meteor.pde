
class Meteor{
  float z;
  int x = rand1.nextInt(1600) + 1;
  int y = rand1.nextInt(900) + 1;
  int i = rand1.nextInt(10) + 1;
  PShape shape;
  float rotateX;
  
  void object(){
    shape = loadShape("rock_c_01.obj");
  }
  
  void move(){
    translate(x, y, z);
    z -= i;
    if(z < - 1000){
      x = rand1.nextInt(1600) + 1;
      y = rand1.nextInt(900) + 1;
      i = rand1.nextInt(10) + 1;
      z = 300;
    }
  }
    
  void spin(){
    rotateX(rotateX);
    rotateX = PI/70 + rotateX;
  }
  
  void display(){
    scale(20);
    shape(shape, 0, 0);
  }
}