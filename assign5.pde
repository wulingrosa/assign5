Bar mybar;
Ball[] myball;
Brick[] mybrick;
//Brick mybrick;
//Ball myball ;

final int LIFE_THREE = 0;
final int LIFE_TWO   = 1;
final int LIFE_ONE   = 2;
final int LIFE_NONE  = 3;
int lifeState;

/*int countBallFrame;    
int ballNum;   
*/

/*
int status = 0;
final int GAME_START = 0 ;
final int GAME_WIN = 1 ;
final int GAME_LOSE = 2 ;
final int GAME_PAUSE = 3 ;
final int GAME_PLAYING = 4 ;
final int GAME_READY = 5 ;
int point;               
int brickCount = 50;
*/




void setup(){

//  status = GAME_START;
  size(640,480);
  background(50, 50, 50);
  myball=new Ball[2];
  mybar=new Bar(100);
  //mybar=new Bar(width/2, height-50, 3);
  mybrick=new Brick[100];
  reset();
 
}



void draw(){
 
  background(50,50,50);
  noStroke();

   mybar.move();
   mybar.display();
   drawLife();
   brickMaker(50,10);
   //drawBrick();
   drawBall();
   //ballStick();

  /*switch (status){ 
  
    case GAME_START :
    textSize(50);
    fill(155, 35, 33);
    printText("Press Enter to Start",320,420); 
    break ;

      
    case GAME_PLAYING :
    background(50,50,50);
      ball[0].move();
      ball[0].display();
      board.move();
      board.display();
      checkRecHit();
      checkWin();
      checkLose();
      break ;
    
    drawLife();
    bar.display(); 
    drawBrick();
    drawBall();
    bar.move();
    ballStick();
    checkBrickDead();
    checkBallOut();
    ifWin();
    countBallFrame+=1;
    break;
      
      
    case GAME_WIN :
      textSize(50);
      fill(199, 63, 74);
      printText("GAME WIN!", width/2 , height/2 );
      break ;
      
    case GAME_LOSE :
      textSize(50);
      fill(155, 35, 33 );
      printText("GAME LOSE!", width/2 , height/2 );       
      break ;
      
    case GAME_PAUSE :
      textSize(50);
      fill(155, 35, 33);
      printText("GAME PAUSE", width/2 , height/2 );    
      break ;
      }
      */
   /* 
  for(int i = 0 ;i< life ;i++){
    noStroke();
    ellipse(120 + i*30 ,height - 30,20,20);
  }
  for (int i=0; i<rec.length; i++){    
    rec[i].display();
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
  fill(255,227,170);
  text("LIFE:",36, 455);
  
int x = 78; 
int y = 459;
int spacing = 25; 
int endCircle = 128; 

switch (lifeState){
  case LIFE_THREE:
   endCircle = 128;
   break;
  case LIFE_TWO:
   endCircle = 103;
   break;
  case LIFE_ONE:
   endCircle = 78;
   break;
  case LIFE_NONE:
   endCircle = 0;
   status = GAME_LOSE;
   break;
}
while(x <= endCircle) { 
ellipse(x, y , 15, 15); 
x = x + spacing; 
}
  //ellipse(78,459,15,15);
  //ellipse(103,459,15,15);
  //ellipse(128,459,15,15);
}

void brickMaker(int total, int Row) {

  int bX = 135; 
  int bY = 50; 
  int xSpacing = 40; 
  int ySpacing = 50; 
 
  for (int i=0; i <total; ++i) {

    int x = bX + (xSpacing*(i % Row));
    int y = bY + (ySpacing*int(i / Row));
     rect(x,y,30,30);
  }
}


/*
void checkRecHit(){
for (int i=0; i<myball.length-1;i++){
 Ball ball = myball[i];
if (countBallFrame>30) {
      myball[ballNum]= new Ball(bar.posX, bar.posY-7);
      if (ballNum< myball.length-2 ) {
        ballNum+=1;
      } else {
        ballNum = 0;
    } 
   }
    countBallFrame = 0;
}}
*/

void mousePressed(){
  if(mouseButton==RIGHT&&myball.gone==false){
    myball.gone=true;}
}
  
  
void mouseMoved(){
  if(myball.gone==false){
   myball.x=mybar.x;
   myball.y=mybar.y-10;}
}

void ballStick(){
  for (int i=0; i<myball.length-1; i++) {
    Ball ball = myball[i];
  if (ball==null||ball.gone){
  fill(255,227,170);
  ellipse(mouseX,height-35,15,15);
  }
  }
  }

  
  void reset() {
  mybar.x = mouseX;
  mybar.y = height-10;;
  myball.x = mybar.x ;
  myball.y = mybar.y -10;

}
