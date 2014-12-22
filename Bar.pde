Ball myball ;
Bar mybar;
Brick mybrick;
 


void setup(){
  size(640,480);
  myball=new Ball();
  mybar=new Bar(100);
  mybrick=new Brick(50,10);
  reset();

  
    
}



void draw(){
 
  background(0);

   
     mybar.move();
    mybar.display();
    drawLife();
    brickMaker(50,10);
    drawBall();
   
   
    
}
    
void drawBall(){
 if(myball.show==true){
   myball.move();
 
 }
 myball.display();
}
 
   

void drawLife() {
  fill(230, 74, 96);
  text("LIFE:", 36, 455);
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
