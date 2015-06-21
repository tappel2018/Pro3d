public class Rect{
  ArrayList<Position> pos;
  public Rect(ArrayList<Position> positions) {
    this.pos = positions;
  }
  
  public void render() {
    beginShape();
    for ( int i = 0; i < pos.size(); i++ ) {
      Position current = pos.get(i);
      Vector toPoint = (new Vector(playerP, current)).getNorm();
      Vector vx = new Vector(new Position(0, 0, 0), new Position(toPoint.end.x, 0, toPoint.end.z));
      Vector vy = new Vector(new Position(0, 0, 0), new Position(0, toPoint.end.x, toPoint.end.z));
      vertex(200*vx.getAngleBetween(getForwardVector()), 200*vy.getAngleBetween(getForwardVector()));
      stroke(255, 0, 0);
      strokeWeight(5);
      point(200*vx.getAngleBetween(getForwardVector()), 200*vy.getAngleBetween(getForwardVector()));
      noStroke();
    }
    endShape(CLOSE);
    
  }
}
