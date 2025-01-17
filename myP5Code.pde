//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var fireworkX = 400;
var explosionX = 0;
var explosionX2 = 0;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 noStroke()
  background(255,255,255,0);
  //firework
  fill(250,250,250,500)
  rect(99, fireworkX, 10, 30);
  rect(328, fireworkX, 10, 30);
  
  //explosion
  fill(998, 255, 0, 100);
  ellipse(99,100,explosionX,explosionX);
  ellipse(328,100,explosionX,explosionX);
  
  //explosion2
  fill(255, 42, 0, 100);
  ellipse(99,100,explosionX2,explosionX2);
  ellipse(328,100,explosionX2,explosionX2);
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  rect(99, fireworkX, 10, 30);
  
  if(fireworkX > 100){
  fireworkX = fireworkX - 3;}
  else{
  explosionX = explosionX + 3
  explosionX2 = explosionX2 + 1
  }

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
