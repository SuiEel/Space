import java.util.Random;
Random rand1 = new Random();
PImage img;
Planet earth = new Planet();
Meteor meteor = new Meteor();
Spaceship spaceship = new Spaceship();

void setup() {
  noStroke();
  size(1600, 900, P3D);
  img = loadImage("galaxy.jpg");
  earth.world();
  meteor.object();
  spaceship.object();
}

void draw() {
  background(img);
  pointLight(255, 179, 128, 250, 150, 400);
  ambientLight(225, 225, 225, 250, 250, 400);
  
  pushMatrix();
  earth.x = width / 2;
  earth.y = height / 2;
  earth.move();
  earth.spin();
  earth.display();
  popMatrix();
  
  pushMatrix();
  meteor.move();
  meteor.spin();
  meteor.display();
  popMatrix();
  
  pushMatrix();
  spaceship.x = width / 2;
  spaceship.y = height / 2;
  spaceship.move();
  spaceship.spin();
  spaceship.display();
  popMatrix();
}