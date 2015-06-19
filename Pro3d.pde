Position playerP = new Position(0, 0, 0);
Position wallP = new Position(0, 0, 5);
int size = 400;
float theta = 0;

void setup() {
  size(size, size);
  frameRate(60);
  smooth();
  rectMode(CENTER);
  Position p = new Position(10, 20, 40);
  print(p.distance(playerP));
}

void draw() {
  translate(size/2, size/2);
  background(0); 
  iterate();
}

void iterate() {
  //rect(0, 0, 100/pow(playerP.distance(wallP), 2.0), 200/pow(playerP.distance(wallP), 2.0));
  Rect cool = new Rect(new Position(5, 0, 5), 1000, 500);
  cool.render();
  if(keyPressed) {
    switch (key) {
      case 'w':
        playerP.translate(0, 0, 0.02);
        break;
      case 's':
        playerP.translate(0, 0, -0.02);
        break;
      case 'a':
        theta += 0.1;
        break;
      case 'd':
        theta += 0.1;
        break;
      
    }
  }
  
  print(playerP);
}


