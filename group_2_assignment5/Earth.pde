
class Planet {
  float x;
  float y;
  float z = -400;
  float rotateX = -.04;
  float rotateY;
  PShape world;
  PImage texture;
  
  void world() {
    world = createShape(SPHERE, 100);
    texture = loadImage("Full_Planet_Texture_by_avmorgan.jpg");
    world.setTexture(texture);
  }
    
    
  void move() {
    translate(x, y, z);
    z += .5;
  }
  
  void spin() {
    rotateY(1.25);
    rotateX(rotateX);
    rotateX += .001;
  }
  
  void display() {
    shape(world, 0, 0);
  }
}