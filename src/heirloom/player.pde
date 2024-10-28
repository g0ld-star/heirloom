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
  void display () {
    fill(255, 0, 0); //Red color
    rect(x,y, w,h); //Block
  }

  void move() {
   if (keyPressed) {
      if (key == 'a' || keyCode == LEFT) {
        x -= 4; // Move left
      }
      if (key == 'd' || keyCode == RIGHT) {
        x += 4; // Move right
      }
      if (key == 'w' || keyCode == UP) {
        y -= 3; // Move up
      }
      if (key == 's' || keyCode == DOWN) {
        y += 5; // Move down
      }
    }
    y = constrain(y,0,195-h); //Keeps player from moving beyond this height
  }
}
