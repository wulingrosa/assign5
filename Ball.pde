class Ball{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float size;
  boolean show ;
 
  void move(){
   if (status==GAME_START){
    x = board.x ;
    y = board.y-5-this.size/2;
    }else if(status == GAME_PLAYING){
    x+=xSpeed;
    y+=ySpeed;
    }
    
    if (x<size/2 || x>width-size/2){
      xSpeed*= -1;
    }
    if (y<size/2){
      ySpeed*= -1;
    }
  
   if (y>height-size/2 + 10){
     x = board.x ;
     y = board.y ;
    }
}

  void display(){
    ellipse(x,y,size,size);
  }
  
  Ball(){
    x = random(width);
    y = random(height);
    xSpeed = 5;
    ySpeed = 3;
    size = 10;
  }
  
Ball(float size, float xSpeed){
    x = board.x;
    y = board.y-5-this.size/2;
    
    this.xSpeed = xSpeed;
    this.ySpeed = size;
    this.size = size;
  }
}
