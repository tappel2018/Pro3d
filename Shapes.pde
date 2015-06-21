public class Rect{
  ArrayList<Position> pos;
  public Rect(ArrayList<Position> positions) {
    this.pos = positions;
  }
  
  public void render() {
//    beginShape();
    for ( int i = 0; i < pos.size(); i++ ) {
      Position current = pos.get(i);
      Vector toPoint = (new Vector(playerP, current)).getNorm();
      Vector vx = new Vector(new origin, new Position(toPoint.end.x, 0, toPoint.end.z));
      Vector vy = new Vector(new origin, new Position(0, toPoint.end.y, toPoint.end.z));
      float vvx = toPoint.getAngleBetween(getForwardVector());
      float vvy = vy.getAngleBetween(getForwardVector());
      if(vvx > PI/2 || vvy > PI/2 || vvx < -PI/2 || vvy < -PI/2)
        return;
//      vertex(200*vx.getAngleBetween(getForwardVector()), 200*vy.getAngleBetween(getForwardVector()));
      stroke(255, 0, 0);
      strokeWeight(5);
      point(size*vvx, 0);
      print(degrees(vvx) + ", " + degrees(vvy) + "\n" + degrees(theta) + "\n");
      noStroke();
    }
//    endShape(CLOSE);
    
  }
}
