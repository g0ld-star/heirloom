// Gold B, Aayush S, Angus K | heirloom | oct. 9 2024
PImage map;
Evilpt1 e1;
player ply1;

boolean play;

int mapWidth = 800;
int mapHeight = 600;
float mapOffsetX = 0;   // Horizontal offset for the map
int speed = 5;

void setup() {
  size(800, 600);
  noStroke();
  map = loadImage("cyberpunk background.png");
  e1 = new Evilpt1();
  ply1 = new player();
  play = false;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background(0);

    // Endless scrolling
    for (int i = -1; i <= 1; i++) {
      image(map, mapOffsetX + i * mapWidth, 0); // Only use horizontal offset
    }


    if (keyPressed) {
      if (keyCode == RIGHT || key == 'd') {
        mapOffsetX -= speed;  // Move left
      } 
    }

      // Loop effect
      if (mapOffsetX <= -mapWidth) {
        mapOffsetX += mapWidth;  // Wrap around to the right
      } else if (mapOffsetX >= 0) {
        mapOffsetX -= mapWidth;  // Wrap around to the left
      }

      // Display the player at the center
      ply1.display(width / 4, height / 3.6);
      e1.display();
      e1.move();
    }
  }


  void startScreen() {
    background(0);
    fill(255);
    textSize(60);
    text("Press 'SpaceKey' to start", width / 8.5, height / 2);
    if (keyPressed) {
      play = true;
    }
  }
