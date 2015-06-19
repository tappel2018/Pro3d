public class Vector{
  public Position start;
  public Position end;
  
  public Vector(Position start, Position end) {
    this.start = start;
    this.end = end;
  }
  
  public float getAngleBetween(Vector other) {
    return acos(this.getDotProduct(other)/(this.getMagnitude()*other.getMagnitude()));
  }
  
  public float getDotProduct(Vector other) {
    Position p1 = this.getNorm().end;
    Position p2 = other.getNorm().end;
    return p1.x*p2.x + p1.y*p2.y + p1.z*p2.z;
  }
  
  public Vector getUnit() {
    return this.getNorm().multiplyNorm(1.0/getMagnitude());
  }
  
  public float getMagnitude() {
    Vector norm = this.getNorm();
    return norm.start.distance(norm.end);
  }
  
  public Vector getNorm() {
    return new Vector(new Position(0, 0, 0), new Position(end.x-start.x, end.y-start.y, end.z-start.z));
  }
  
  public Vector multiplyNorm(float scalar) {
    Vector norm = getNorm();
    return new Vector(new Position(0, 0, 0), new Position(norm.end.x*scalar, norm.end.y*scalar, norm.end.z*scalar));
  }
}
