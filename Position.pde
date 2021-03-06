public class Position {
  public float x;
  public float y;
  public float z;
  
  Position(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
  
  Position(Position old) {
    this.x = old.x;
    this.y = old.y;
    this.z = old.z;
  }
  
  public void translate(float x, float y, float z) {
    this.x = this.x + x;
    this.y = this.y + y;
    this.z = this.z + z;
  }
  
  public void translate(Vector toMoveBy) {
    Vector norm = toMoveBy.getNorm();
    this.translate(norm.end.x, norm.end.y, norm.end.z);
  }
  
  public void deplace(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
  
  public float distance(Position other) {
    return sqrt(
           pow(abs(other.x-this.x), 2.0)
          +pow(abs(other.y-this.y), 2.0)
          +pow(abs(other.z-this.z), 2.0));
  }
  
  public String toString()
  {
    return "(" + x + ", " + y + ", " + z + ")" ;
  }

} 
