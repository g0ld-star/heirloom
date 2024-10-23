// Gold B, Aayush S, Angus K | heirloom | oct. 9 2024


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

  eTimer = newTimer(1000);
  eTimer.start();
}

  if (eTimer.isFinished()) {
  }
   else() {
  }
}
