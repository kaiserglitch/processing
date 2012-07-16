class Atom{
  
  float x = 0, y = 0; // Variables globales
  float speedX = 2;
  float speedY = 1;
  ;
  
  Atom(float _x, float _y){ // Constructor
    x = _x;
    y = _y;    
  }
  
  void run(){
    display();
    move();
    bounce();
    gravity();
  }
  
  void gravity(){
    speedY += 0.2;
  }
  
  void bounce(){
    if(x > width){
      speedX = speedX * -1;
    }
      else if(x < 0){
        speedX = speedX * -1;
      }
    if(y > height){
      speedY = speedY * -1;
    }
      else if(y < 0){
        speedY = speedY * -1;
      }
  }
  
  void move(){
    x += speedX;
    y += speedY; 
  }

  void display(){
    ellipse(x,y,20,20);
  }
  
}
