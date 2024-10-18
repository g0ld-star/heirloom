// Aayush S| heirloom | oct. 9 2024
PImage map;
map = loadImage("map.png");


float plyrX, plyrY;  // Player's position
float bgX;           // Background's position
int bgWidth = 800;   // Width of the background image

void setup() {
  size(800, 600);
  charX = width / 2;  // Start character in the middle
  charY = height / 2;
  bgX = 0;            // Start background at 0
}

void draw() {

  bgX = charX - width / 2;  // Center the background on the character


  background(map);

 //Player
  fill(255, 0, 0);  // Character color (red)
  ellipse(charX, charY, 50, 50); // Draw character as a circle
}

void keyPressed() {
  // Move the character with arrow keys
  if (keyCode == RIGHT) {
    charX += 5; // Move right
  } else if (keyCode == LEFT) {
    charX -= 5; // Move left
  } else if (keyCode == UP) {
    charY -= 5; // Move up
  } else if (keyCode == DOWN) {
    charY += 5; // Move down
  }
}
