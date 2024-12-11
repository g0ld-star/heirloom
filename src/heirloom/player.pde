//Aayush Silwal
class player {
  int x, y, w, h, lives, health;
  float speed;
  float ySpeed = 0;  //  jump speed
  float gravity = 0.5;   // Gravity
  float jumpStrength = -10; // Jump force
  boolean isJumping = false;
  boolean isColliding = false;  // To ensure health only decreases once per collision
  

  // Constructor
  player(int startX, int startY, int colW, int colH) {
    x = startX;
    y = startY;
    w = colW;  // Collision width
    h = colH;  // Collision height
    speed = 5.2;
    health = 100; // Initialize health
    lives = 3;
    
  }

  void display() {
    fill(255, 0, 0);  // Red color for player
    rect(x, y, 30, 35);  // Visual size (doesn't change collision size)
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

      // Stop from going below ground level
      if (y >= 517) {
        y = 517;
        ySpeed = 0;
        isJumping = false;
      }
    }
  }

  
// Check for collision 
void checkCollision(Evilpa e) {
   
    boolean isCollidingNow = (x < e.x + e.w && x + w > e.x && y < e.y + e.h && y + h > e.y);

    // Only reduce health once if the player collides with an enemy and the enemy hasn't collided yet
    if (isCollidingNow && !e.hasCollided) {
      // Reduce health 
      health -= 20;
      health = constrain(health, 0, 100); // Keep health within (0-100)

      // Update health in the InfoPanel 
      if (isCollidingNow) {
        panel.updateHealth(-20); // Decrease health in the panel
      }

      // Mark this enemy as collided
      e.hasCollided = true;
}
}
}
