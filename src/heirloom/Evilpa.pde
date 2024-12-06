class Evilpa {

  // Member Variable
  int x, y;
  PImage f1;
  float speed;
  boolean alive;
  char type;

  // constructor
  Evilpa(char type ) {
    this.type = type;
    x = width; //come from right side
    y = 500;
    speed = 5.2;
    f1 = loadImage ("Enemy.png");
    // alive = false;
  }

  //member Methods
  void display() {
    if ( type == 'p') {
      f1.resize(50,50);
      image(f1, x, y);
    }
  }

  void move () { 
    x-=speed;
    

    //if (mapOffsetX < 0) {
    //  x -= speed * 2; //
    //} else {
    //  x -= speed; //
    //}
    //if (x<-30) {    //if the enemy goes off screen, it will respawn at right side
    //  x=width;
    //  y=500;
    //}
  }
  boolean reachedLeft(){
    if (x<-10) {
      return true;
    } else {
      return false;
    }
  }
  
}
