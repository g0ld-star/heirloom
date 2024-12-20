//gold B
class Evilpa {
  // Member Variables
  int x, y, w, h;
  PImage f1;
  float speed;
  boolean alive;
  boolean  hasCollided;
  char type;

  // constructor
  Evilpa(char type ) {
    this.type = type;
    x = width; // come from the right side
    y = 500;
    w = 50;  // Width for collision
    h = 60;  // Height for collision
    speed = 5.2;
    f1 = loadImage("Enemy.png");
    
  }

  // member Methods
  void display() {
    if (type == 'p') {
      f1.resize(w, h);  // Resize image based on width and height
      image(f1, x, y);
    }
  }

  void move() {
    x -= speed;
  
  }


  boolean reachedLeft() {
    return x < -5;
  }
}
