class player {
  // Member Variables
  int x, y, w, h, speed, lives, health;
  //PImage p1;
  boolean alive;

  // Constructor
  player() {
    x = 50;
    y = 158;
    w = 30;
    h = 35;
    speed = 5;
    health = 100;
    lives = 3;
  //  p1 = loadImage("");
    alive = false;
  }

  // Member methods
  void display (float centerX, float centerY) {
    fill(255, 0, 0); //Red color
    rect(centerX - w/4, centerY - h/3.6, w,h); //Block
  }

  void move() {
 
    y = constrain(y,0,195-h); //Keeps player from moving beyond this height
  }
}
