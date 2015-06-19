public class Rect{
  Position center;
  float width;
  float height;
  public Rect(Position center, float width, float height) {
    this.center = center;
    this.width = width;
    this.height = height;
  }
  
  public void render()
  {
    //TODO: finish rendering
    Position c1 = new Position(center);
    c1.translate(width/2, height/2, 0);
    
    Position c2 = new Position(center);
    c1.translate(width/2, -height/2, 0);
    
    Position c3 = new Position(center);
    c1.translate(-width/2, -height/2, 0);
    
    Position c4 = new Position(center);
    c1.translate(-width/2, height/2, 0);
    
    quad(-width/pow(playerP.distance(c1), 2.0), -height/pow(playerP.distance(c1), 2.0), 
         width/pow(playerP.distance(c2), 2.0), -height/pow(playerP.distance(c2), 2.0),
         width/pow(playerP.distance(c3), 2.0), height/pow(playerP.distance(c3), 2.0),
         -width/pow(playerP.distance(c4), 2.0), height/pow(playerP.distance(c4), 2.0));
  }
}
