Ball []ball;
Bar board;
Brick [] rec;

int life ;
float shootAngle ;

/*
int status = 0;
final int GAME_START = 0 ;
final int GAME_WIN = 1 ;
final int GAME_LOSE = 2 ;
final int GAME_PAUSE = 3 ;
final int GAME_PLAYING = 4 ;
final int GAME_READY = 5 ;
/*


void setup(){
  size(640,480);
  ball=new Ball();
  bar=new Bar(100);
  brick=new Brick(50,10);
  reset();
}

void draw(){

  background(255);
  textSize(32);
  text("LIFE", 36, height-25);
  fill(0,0,255 );
  
  /* 
  for(int i = 0 ;i< life ;i++){
    noStroke();
    ellipse(120 + i*30 ,height - 30,20,20);
  }
  for (int i=0; i<rec.length; i++){    
    rec[i].display();
  }
  /*

bar.move();
bar.display();
drawLife();
brickMaker(50,10);
drawBall();


      switch (status){ 
    case GAME_START :
      text("Press Enter",320,420); 
      ball[0].display();
      ball[0].move();

      board.move();
      board.display();
      break ;
      
    case GAME_PLAYING :
      ball[0].move();
      ball[0].display();
      board.move();
      board.display();
      checkRecHit();
      checkWin();
      checkLose();
      break ;
      
    case GAME_WIN :
      background(0);
      textSize(50);
      fill(250, 244,156 );
      text("GAME WIN", width/2 , height/2 );
      break ;
      
    case GAME_LOSE :
      background(0);
      textSize(50);
      fill(140, 6,13 );
      text("GAME LOSE", width/2 , height/2 );       
      break ;
      
    case GAME_PAUSE :
      textSize(50);
      fill(140, 6,13 );
      text("GAME PAUSE", width/2 , height/2 );    
      break ;
  }
    
}

void drawBall(){
 if(ball.show==true){
   ball.move();
 }
 ball.display();
}
 

void brickMaker(int total, int numInRow) {
  int bX = 135; 
  int bY = 50; 
  int xSpacing = 40; 
  int ySpacing = 50; 
 
  for (int i=0; i <total; ++i) {
    int x = bX + (xSpacing*(i % numInRow));
    int y = bY + (ySpacing*int(i / numInRow));
     rect(x,y,30,30);
  }
}
  
  
void mousePressed(){
  if(mouseButton==RIGHT&&myball.show==false){
    ball.show=true;}
}
  
void mouseMoved(){
  if(myball.show==false){
   ball.x=bar.x;
   ball.y=bar.y-10;}
}


void reset(){
  life = 3 ;
  recHit = 0 ;
  shootAngle = random(-5,5) ;
  board = new Bar(100);
  rec = new Brick[50];
  for (int i = 0; i< rec.length ; i++){
    rec[i] = new Brick(int(i/5),int(i%5));
    }

  ball = new Ball[1];
  for (int i=0; i<ball.length; i++){
    ball[i] = new Ball(10, shootAngle);   
  }
  }
