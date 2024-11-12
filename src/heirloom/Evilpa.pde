class Evilpa {

  // Member Variable
  int x, y, w, h, health, lives;
  PImage f1;
  float speed;
  boolean alive;
  char type;
  
  // constructor
  Evilpa(char type ) {
    this.type = type;
    x = width; //come from right side
    y = 500;
    w = 35;
    h = 40;
    speed = 3.2;
    health = 100;
    f1 = loadImage ("Enemy.png");
    // alive = false;
  }

  //member Methods
  void display() {
    if ( type == 'p'){
    image(f1, x, y, width/10, height/10);
    }
  }

  void move () {
    
    if (mapOffsetX < 0) {
      x -= speed * 2; //
    } else {
      x -= speed; //
    }
    if (x<-w) {    //if the enemy goes off screen, it will respawn at right side
      x=width;
      y=500;
    }
  }
}
