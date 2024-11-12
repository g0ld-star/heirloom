// Aayush S| heirloom | oct. 9 2024

class Level {
  int x, y;
  String fileName;
  char type;
  PImage bg;

  Level( char type ) {
    x=0;
    y=0;

    //add name
    fileName = " ";
    this.type = type;
    bg=loadImage( fileName);
  }
  void display() {
 image(bg, x, y);
  }
}
