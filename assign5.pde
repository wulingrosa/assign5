Ball ball ;
Bar bar;
Brick brick;
 


void setup(){
  size(640,480);
  ball=new Ball();
  bar=new Bar(100);
  brick=new Brick(50,10);
  reset();

  
    
}

void draw(){
 
  background(0);
     bar.move();
    bar.display();
    drawLife();
    brickMaker(50,10);
    drawBall();
}
    
void drawBall(){
 if(ball.show==true){
   ball.move();
 
 }
 ball.display();
}
 
   

void drawLife() {
  fill(230, 74, 96);
  text("LIFE:", 36, 455);
  ellipse(78,459,15,15);
  ellipse(103,459,15,15);
  ellipse(128,459,15,15);

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
void reset() {
  bar.x = mouseX;
  bar.y = height-10;;
  ball.x = bar.x ;
  ball.y = bar.y -10;
}
