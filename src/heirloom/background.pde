// Aayush S| heirloom | oct. 9 2024
PImage backGround;
backGround = loadImage ("map.png");
int mapWidth = 1000;  // Width of the full map
int mapHeight = 1000;  // Height of the full map

float mapOffsetX = 0;  // X offset of the map
float mapOffsetY = 0;  // Y offset of the map
int speed = 4;  // Speed of movement

void setup() {
  size(500, 500);// Size of window
}
void draw() {
  background(backGround);
  //Moving map
  if (keyPressed) {
    if (keyCode == RIGHT) {
      mapOffsetX -= speed;
    } else if (keyCode == LEFT) {
      mapOffsetX += speed;
    } else if (keyCode == UP) {
      mapOffsetY += speed;
    } else if (keyCode == DOWN) {
      mapOffsetY -= speed;
    }
  }
  // Map with the offset
  for (int x = 0; x < mapWidth; x += backGround) {
    for (int y = 0; y < mapHeight; y += backGround) {
      float drawX = x + mapOffsetX;
      float drawY = y + mapOffsetY;


      if (drawX > -backGround && drawX < width && drawY > -backGround && drawY < height) {
        fill((x + y) % 255);  // Vary tile color based on position
        rect(drawX, drawY, backGround, backGround);  // Draw tile
      }
    }
  }
