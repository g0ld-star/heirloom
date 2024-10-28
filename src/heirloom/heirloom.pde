// Gold B, Aayush S, Angus K | heirloom | oct. 9 2024
PImage map;
Evilpt1 e1;
player ply1;
boolean play;

void setup() {
  size(800, 600);
  map = loadImage("map.png");
  e1 = new Evilpt1();
  ply1 = new player();
  play = false;
  // eTimer = newTimer(1000);
  // eTimer.start();
}
void draw() {
  if (play == false) {
    startScreen();
  } else {
    background(0);
    // THIS IS WHERE GAMPLAY IS
    image(map, 0, 0);
    e1.display();
    e1.move();
    ply1.move();
    ply1.display();   
  }
}

void startScreen() {
  background(0);
  fill(255);
  text("Press any key to start", width/2.3, height/2);
  if (keyPressed) {
    play = true;
  }
}
