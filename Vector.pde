class Vector{
  float x;
  float y;
  public Vector(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void add(Vector v){
    this.x += v.x;
    this.y += v.y;
  }
}
