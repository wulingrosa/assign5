Ball myball ;
Bar mybar;
Brick mybrick;
 
/*
int status = 0;
final int GAME_START = 0 ;
final int GAME_WIN = 1 ;
final int GAME_LOSE = 2 ;
final int GAME_PAUSE = 3 ;
final int GAME_PLAYING = 4 ;
final int GAME_READY = 5 ;
*/

void setup(){
  size(640,480);
  myball=new Ball();
  mybar=new Bar(100);
  mybrick=new Brick(50,10);
  reset();
  
    
}



void draw(){
 
  background(240, 248, 255);
   
   mybar.move();
   mybar.display();
   drawLife();
   brickMaker(50,10);
   drawBall();
   
   
   /* 
  for(int i = 0 ;i< life ;i++){
    noStroke();
    ellipse(120 + i*30 ,height - 30,20,20);
  }
  for (int i=0; i<rec.length; i++){    
    rec[i].display();
  }
  */

  /*switch (status){ 
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
      */

 
}

void drawBall(){
 if(myball.show==true){
   myball.move();
 
 }
 myball.display();
}
 
   

void drawLife() {
  fill(0, 191, 255);
  text("LIFE:",36, 455);
  ellipse(78,459,15,15);
  ellipse(103,459,15,15);
  ellipse(128,459,15,15);
  /*---------Draw Ship Life---------*/
 
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
    myball.show=true;}
}
  
void mouseMoved(){
  if(myball.show==false){
   myball.x=mybar.x;
   myball.y=mybar.y-10;}
}
void reset() {
  mybar.x = mouseX;
  mybar.y = height-10;;
  myball.x = mybar.x ;
  myball.y = mybar.y -10;

}
