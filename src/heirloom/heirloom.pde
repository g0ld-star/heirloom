// Gold B, Aayush S, Angus K | heirloom | oct. 9 2024
PImage map01, map02;
ArrayList<Evilpa> evilpas = new ArrayList<Evilpa>();
player ply1;
InfoPanel panel;

boolean play;

int welcomeCounter;
int mapWidth = 800;
int mapHeight = 600;
float mapOffsetX = 0;   // Horizontal offset for the map
int speed = 5;
Timer t1, wTime;


void setup() {
  size(800, 600);
  noStroke();
  panel=new InfoPanel(0, 100, 3);
  map01 = loadImage("cyberpunk background.png");
  map02 = loadImage("flowergardenbg.png");
  image(map01, 0, 0);
  map01.resize(900, 600);
  image(map01, 0, 0);
  
  ply1 = new player(width / 2, 517,  30, 35);



  play = false;
  //1000 = 1 second
  t1=new Timer(1000);
  t1.start();
  wTime = new Timer(5000);
  wTime.start();
  welcomeCounter = 0;
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

  // Display player and enemies
  ply1.display();
  ply1.move();

  // Check for collisions between the player and all enemies
  for (int i = 0; i < evilpas.size(); i++) {
    Evilpa e = evilpas.get(i);
    e.display();
    e.move();
    ply1.checkCollision(e);  // Check for collision with each enemy
  }

  panel.display();  // Display the InfoPanel
}

void keyPressed() {
  if (key == ' ') {
    ply1.jump();
  }
}


void startScreen() {
  background(0);
  if (wTime.isFinished()) {
    wTime.start();
    welcomeCounter++;
  }
  switch(welcomeCounter) {
  case 0:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    //textFont();
    text("You are the main character, and you have magical abilities.", width / 2, 200);
    //wTime.totalTime = 2000;
    break;
  case 1:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    //textFont();
    text("But there's a catch, \n it's only if you are in possession of your family heirloom \n that has been passed down through generations.", width / 2, 200);
    // wTime.totalTime = 2000;
    break;
  case 2:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("These magical abilities have made an evil being extremely \n jealous for as long as it has been alive.", width / 2, 200);
    break;
  case 3:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("So one night, when \n you decide to go away from your home to visit family, you \n feel something missing...", width / 2, 200);
    break;
  case 4:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("You think 'it couldn't be anything important, right?' But \n without knowing, that family heirloom you had that allowed \n you to use magic abilities was stolen from your home.", width / 2, 200);
    break;
  case 5:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("'How could I let this happen? Why didn't I just take it with me!' \n You think to yourself, and at that moment, you find \n out who could have stolen the heirloom.", width / 2, 200);
    break;
  case 6:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("The long lost enemy of the family, who wanted that power so \n desperately had now taken control of it!", width / 2, 200);
    break;
  case 7:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Now, you must go on a quest to his lair to find your \n heirloom.", width / 2, 200);
    break;
case 8:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("You will end up fighting many people who you may not \n want to fight.", width / 2, 200);
    break;
case 9:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("There is also a possibility of finding new friends.", width / 2, 200);
    break;
case 10:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Your enemy also has time magic while in possession \n of your heirloom! Watch out!", width / 2, 200);
    break;
case 11:
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Most importantly, on this journey, you might get your \n own magic abilities without needing the heirloom.", width / 2, 200);
    break;
  default:
    break;
  }
  fill(190);
  textSize(25);
  text("Press 'SpaceKey' to start", width / 2, 400);
  if (keyPressed) {
    play = true;
  }
}
