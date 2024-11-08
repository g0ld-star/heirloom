// Gold B, Aayush S, Angus K | heirloom | oct. 9 2024
PImage map;
//ArrayList <evil> evils = new ArrayList <evil>(); //Array list for Evil henchmen
Evilpt1 e1;
player ply1;
infoPanel panel;

boolean play;

int mapWidth = 800;
int mapHeight = 600;
float mapOffsetX = 0;   // Horizontal offset for the map
int speed = 3;

void setup() {
  size(800, 600);
  noStroke();
  panel = new infoPanel(0, 100, 3);
  map = loadImage("cyberpunk background.png");
  image(map, 0, 0);
  map.resize(900, 600);
  image(map, 0, 0);
  e1 = new Evilpt1();
  ply1 = new player();
  play = false;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background(0);

    // Update timer
    panel.updateTimer(1.0 / frameRate);

    // Endless scrolling background
    for (int i = -1; i <= 1; i++) {
      image(map, mapOffsetX + i * mapWidth, 0);
    }

    // Player movement
    if (keyPressed) {
      if (keyCode == RIGHT || key == 'd') {
        mapOffsetX -= speed;  // Move left
      }

    
        if (key == ' ' && !ply1.isJumping) {
        ply1.jump(); // Jump 
      }
    }

    // Background loop effect
    if (mapOffsetX <= -mapWidth) {
      mapOffsetX += mapWidth;
    } else if (mapOffsetX >= 0) {
      mapOffsetX -= mapWidth;
    }

    // Update player movement and display
    ply1.move();
    ply1.display();

    // Update and display enemy
    e1.display();
    e1.move();

    // Display panel
    panel.display();
    
    //Update 
   // updateEnemies();
  }
}


void startScreen() {
  background(0);
  fill(255);
  textSize(50);
  text("Click 'mouse anywhere' to start", width/10 , height / 2);
  if (mousePressed) {
    play = true;
  }
}

//void updateEnemies() {} 
