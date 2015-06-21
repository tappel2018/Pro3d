Position playerP = new Position(0, 0, 0);
int size = 400;
float theta = 0;

void setup() {
  size(size, size);
  frameRate(60);
  smooth();
  rectMode(CORNER);
  Position p = new Position(10, 20, 40);
  print(p.distance(playerP));
  Vector v1 = new Vector(new Position(2, 2, 2), new Position(-3, -3, 2));
  Vector v2 = new Vector(new Position(2, 2, 2), new Position(2, 5, 5));
  print(v1.getAngleBetween(v2));
  noStroke();
  frameRate(20);
}

void draw() {
  background(0);
  fill(125);
  rect(0, size/2, size, size);
  fill(255);
  translate(size/2, size/2);
  iterate();
  //print(getForwardVector());
}

void iterate() {
  ArrayList<Position> pos = new ArrayList<Position>();
  pos.add(new Position(0, 0, 0));
  pos.add(new Position(1, 0, 1));
  pos.add(new Position(0, 0, 1));
  pos.add(new Position(0, 1, 1));
  pos.add(new Position(1, 1, 1));
  pos.add(new Position(1, 1, -1));
  pos.add(new Position(-1, 1, -1));
  pos.add(new Position(-1, 1, 1));
  Rect cool = new Rect(pos);
  cool.render();
  if(keyPressed) {
    switch (key) {
      case 'w':
        playerP.translate(getForwardVector().multiplyNorm(0.01));
        break;
      case 's':
        playerP.translate(getForwardVector().multiplyNorm(-0.01));
        break;
      case 'a':
        theta -= 0.05;
        break;
      case 'd':
        theta += 0.05;
        break;
      
    }
  }
  
  //print(playerP);
}

public Vector getForwardVector() {
  return new Vector(new Position(0, 0, 0), new Position(0 + cos(theta), 0, 0 + sin(theta)));
}


