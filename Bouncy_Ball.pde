Ball test;


void setup(){
  size(400,400);
  test = new Ball();
}
void draw(){
  background(0,255,0);
  test.render();
  test.act();
}
