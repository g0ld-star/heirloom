class player {
  // Member Variables
  int x, y, w, h, speed, lives, health;
  PImage p1;
  boolean alive;

  // Constructor
  player() {
    x = 0;
    y = 0;
    w = 50;
    h = 50;
    speed = 5;
    health = 100;
    lives = 3;
    p1 = loadImage("");
    alive = false;
  }

  // Member methods
  void display () {
  }

  void move() {
  }
}
