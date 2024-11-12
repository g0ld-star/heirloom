// Gold B, Aayush S, Angus K | heirloom | oct. 9 2024
PImage map01, map02;
ArrayList<Evilpa> evilpas = new ArrayList<Evilpa>();
//Evilpt e1;
player ply1;
InfoPanel panel;

boolean play;

int mapWidth = 800;
int mapHeight = 600;
float mapOffsetX = 0;   // Horizontal offset for the map
int speed = 5;
Timer t1;


void setup() {
  size(800, 600);
  noStroke();
  //panel = new infoPanel(0, 100, 3);
  map01 = loadImage("cyberpunk background.png");
  map02 = loadImage("flowergardenbg.png");
  image(map01, 0, 0);
  map01.resize(900, 600);
  image(map01, 0, 0);
  //e = new Evilpa('p');
  ply1 = new player(width/2, 517);
  play = false;
  panel=new InfoPanel(0, 100, 3);
  //1000 = 1 second
  t1=new Timer(500);
  t1.start();
}



void draw() {
  if (!play) {
    startScreen();
  } else {
    background(0);
    if (t1.isFinished()) {
      evilpas.add(new Evilpa('p'));
      t1.start();
    }


    //Update timer
    //panel.updateTimer(1.0 / frameRate);
    // Endless scrolling
    for (int i = -1; i <= 1; i++) {
      image(map02, mapOffsetX + i * mapWidth, 0); // Only use horizontal offset
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
  }
  // Display objects
  ply1.display();
  ply1.move();

  for (int i = 0; i < evilpas.size(); i++) {
    Evilpa e = evilpas.get(i);
    e.display();
    e.move();
  }
  //e1.display();
  //e1.move();
  panel.display();
}
void keyPressed() {
  if (key == ' ') {
    ply1.jump();
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
