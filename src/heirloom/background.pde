// Aayush S| heirloom | oct. 9 2024
PImage map;
float charX, charY; //Plaayer position
float bgX; //Background
int bgWidth= 800;


void setup() {
  size(800, 600);
  charX = width / 2;  // Start character in the middle
  charY = height / 2;
  bgX = 0;            // Start background at 0
  map = loadImage("map.png");
}

void draw() {

  bgX = charX - width / 2;  // Center the background on the character
//draw background
image(map, bgX, 0, bgWidth, height);

 //Player
  fill(255, 0, 0);  // 
  ellipse(charX, charY, 50, 50); // Character is circle for now
}

void keyPressed() {
  // Move the character with arrow keys
  if (keyCode == RIGHT) {
    charX += 5; //  right
  } else if (keyCode == LEFT) {
    charX -= 5; //  left
  } else if (keyCode == UP) {
    charY -= 5; //  up
  } else if (keyCode == DOWN) {
    charY += 5; //  down
  }
}
