class Evilpt1 {

  // Member Variable
  int x, y, w, h, speed, health, lives;
  PImage f1;
  boolean alive;
  // constructor
  Evilpt1() {
    x = width; //come from right side
    y = 158;
    w = 35;
    h = 40;
    speed = 5;
    health = 100;
    f1 = loadImage ("Enemy.png");
   // alive = false;
  }

  //member Methods
  void display() {
    image(f1,x,y,w,h);
  }

  void move () {
    x -= speed; //Move to left edge
    if (x<-w){    //if the enemy goes off screen, it will respawn at right side
      x=width;
      y=158;
    }
  }
}
