import controlP5.*;

ControlP5 controller;
Button playButton;
Button resetButton;


int lineNum = 50;
Line[] lines = new Line[lineNum];

float xspeed = 1;
float yspeed = 1;
float moveX1 = 1;
float moveY1 = 1;
float moveX2 = 1;
float moveY2 = 1;

boolean play = false;
boolean reset = false;

void setup(){
  size(500,500);
  background(0);
  for(int i = 0 ; i< lineNum; i++){
    lines[i] = new Line (random(0, 500), random(50, 400), 255 - i*3);
  }
  
  controller = new ControlP5(this);
  
  playButton = controller.addButton("play")
                          .setSize(50,50)
                          .setPosition(20,20)
                          .setSwitch(play);
                          
  resetButton = controller.addButton("reset")
                          .setSize(50,50)
                          .setPosition(20,100)
                          .setSwitch(reset);
                           
}

void draw(){
  if(play == true){
    for(Line line : lines){
       line.display();
       line.initalMovement();
    }
   }
}

void play(){
  if(play == true){
    noLoop();
    play = false;
  }else{
    loop();
    play = true;
  } 
}

void reset(){
  if(reset == true){
    background(0);
    reset = false;   
  }else{
    reset = true;
    background(0);
  }
}
