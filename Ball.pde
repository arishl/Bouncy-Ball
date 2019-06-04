class Ball{
  
  Vector location;
  Vector velocity;
  Vector acceleration;
  Vector gravity;
  
  public Ball(){
    location = new Vector(random(50,300),50);
    velocity = new Vector(6,2);
    acceleration = new Vector(0,0);
    gravity = new Vector(0,1.3);    
  }
  
  public void render(){
    pushMatrix();
    translate(location.x,location.y);
    ellipse(0,0,50,50);
    popMatrix();
  }
  
  public void act(){
    if(location.y>=375){
      location.y = 375;
    }
    if(location.x>=375){
      location.x = 375;
    }
    if(location.x<=25){
      location.x=25;
    }
    if(location.y>=375){
      if(velocity.y>0){        
        velocity.y = -velocity.y*.9;
        velocity.x = velocity.x*.9;
      }    
    }
    if(location.x>=375||location.x<=25){
      velocity.x = -velocity.x*.9;       
    }
    velocity.add(gravity);
    location.add(velocity);
  }
}
