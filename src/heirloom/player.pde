//Aayush Silwal
class player {
  int x, y, w, h, speed, lives, health;
  float yVelocity = 0;  //  jump
  float gravity = 0.5;   // Gravity
  boolean isJumping = false;

  player() {
    x = 50;
    y = 517; 
    w = 30;
    h = 35;
    speed = 5;
    health = 100;
    lives = 3;
  }

  void display() {
    fill(255, 0, 0);  // Red color for player
    rect(x, y, w, h);
  }

  void jump() {
    if (!isJumping) {
      yVelocity = -11;  
      isJumping = true;  
    }
  }

  void move() {
    y += yVelocity;  
    yVelocity += gravity;  // Apply gravity

  //stop from going below ground level
    if (y >= 517) {
      y = 517;  
      yVelocity = 0;  
      isJumping = false;  
    }
  }
}
