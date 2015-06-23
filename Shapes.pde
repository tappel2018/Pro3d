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
        Vector vx = new Vector(origin, new Position(toPoint.end.x, 0, toPoint.end.z));
//      Vector vy = new Vector(origin, new Position(0, toPoint.end.y, toPoint.end.z));
//      float vvx = toPoint.getAngleBetween(getForwardVector());
//      float vvy = vy.getAngleBetween(getForwardVector());
//      if(vvx > PI/2 || vvy > PI/2 || vvx < -PI/2 || vvy < -PI/2)
//        return;
//      vertex(200*vx.getAngleBetween(getForwardVector()), 200*vy.getAngleBetween(getForwardVector()));
      
//    | cos θ    0   sin θ| |x|   | x cos θ + z sin θ|   |x'|
//    |   0      1       0| |y| = |         y        | = |y'|
//    |-sin θ    0   cos θ| |z|   |-x sin θ + z cos θ|   |z'|
      
      float fx = theta;
      float px = atan(toPoint.end.x/toPoint.end.z);
      
      if( toPoint.getAngleBetween(getForwardVector()) > PI/2)
        return;
        
      float deltatheta = px - fx;
      
      if( toPoint.end.z < 0 )
      {
        deltatheta = PI + px - fx;
        deltatheta %= 2*PI;
      }
      
//      float vyx =  toPoint.end.x*cos(deltatheta) + toPoint.end.z*sin(deltatheta);
//      float vyz = -toPoint.end.x*sin(deltatheta) + toPoint.end.z*cos(deltatheta);
//      Vector vy = new Vector(origin, new Position(vyx, toPoint.end.y, vyz));
      
      float thetaY = atan(-toPoint.end.y/vx.getMagnitude());
      
      
      
      if(thetaY> PI/2 || deltatheta > PI/2)
        return;
     
//      stroke(255, 0, 0);
//      strokeWeight(5);
      vertex(2*size*deltatheta, 2*size*thetaY);
      //print(degrees(vvx) + ", " + degrees(vvy) + "\n" + degrees(theta) + "\n");
//      noStroke();
    }
    endShape(CLOSE);
    
  }
}
