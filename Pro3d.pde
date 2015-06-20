Position playerP = new Position(0, 0, 0);
Position wallP = new Position(0, 0, 5);
int size = 400;
float theta = 0;
public Vector forward = getForwardVector();

void setup() {
  size(size, size);
  frameRate(60);
  smooth();
  rectMode(CORNER);
  Position p = new Position(10, 20, 40);
  print(p.distance(playerP));
  Vector v1 = new Vector(new Position(2, 2, 2), new Position(2, 2, 5));
  Vector v2 = new Vector(new Position(2, 2, 2), new Position(2, 5, 5));
  print(v1.getAngleBetween(v2));
  noStroke();
}

void draw() {
  background(0);
  fill(125);
  rect(0, size/2, size, size);
  fill(255);
  translate(size/2, size/2);
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

public Vector getForwardVector() {
  return new Vector(new Position(playerP.x, playerP.y, playerP.z), new Position(playerP.x + sin(theta), playerP.y, playerP.z + cos(theta)));
}


