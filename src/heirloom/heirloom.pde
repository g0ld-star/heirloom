// Gold B, Aayush S, Angus K | heirloom | oct. 9 2024
PImage map;
Evilpt1 e1;
boolean play;
void setup() {
  size(800, 600);
  map = loadImage("map.png");
  e1 = new Evilpt1();
  play = false;
  // eTimer = newTimer(1000);
  // eTimer.start();
}
void draw() {
  if (play == false) {
    startScreen();
  } else {
    // THIS IS WHERE GAMPLAY IS
    image(map,0,0);
    e1.display();
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
//void keyPressed() {
//  // Move the character with arrow keys
//  if (keyCode == RIGHT) {
//    charX += 5; //  right
//  } else if (keyCode == LEFT) {
//    charX -= 5; //  left
//  } else if (keyCode == UP) {
//    charY -= 5; //  up
//  } else if (keyCode == DOWN) {
//    charY += 5; //  down
//  }
//}
