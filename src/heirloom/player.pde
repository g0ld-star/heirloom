//Aayush Silwal
class player {
  int x, y, w, h, speed, lives, health;
  float ySpeed = 0;  //  jump speed
  float gravity = 0.5;   // Gravity
  float jumpStrength = -10; //Jump force
  boolean isJumping = false;

  player(int startX, int startY) {
    x = startX;
    y = startY;
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
      ySpeed = jumpStrength;
      isJumping = true;
    }
  }

  void move() {
    if (isJumping) {
      y += ySpeed;
      ySpeed += gravity;  // Apply gravity

      //stop from going below ground level
      if (y >= 517) {
        y = 517;
        ySpeed = 0;
        isJumping = false;
      }
    }
  }
}
