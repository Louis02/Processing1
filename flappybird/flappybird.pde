int x = 100;
int y = 20;
int pipex = 750;
int pipey = 200;
int pipeGap  = 100;
double birdVelocity = 0;
double birdGravity = .1;
void setup(){
  
size(700,500);
background(45, 65, 245);
ellipse(x, y, 20, 20);
fill(255, 65, 255);

}
void draw(){
  background(45, 65, 245);
birdVelocity += birdGravity;
y += birdVelocity;
fill(255, 65, 255);
ellipse(x, y, 20, 20);

fill(255,0,0);
rect(pipex, 0, 25, pipey);
rect(pipex, pipey + pipeGap, 25, 700-pipey-pipeGap);
pipex -= 4;
if(pipex<=0){
  pipex=750;
}
if(y>=500){
 birdVelocity=0;
  y=0;
}
if(intersects(x,y,pipex, 0, pipey)){
  text( "you lost", 200, 300);
}
else if(intersects(x,y, pipex, pipey + pipeGap, 700-pipey-pipeGap)){
   text( "you lost", 200, 300);
}
}
void mousePressed(){
  birdVelocity = -3.5;
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (x + 20 > pipex && x < pipex + 25 && y +20 > pipey)
return true;
else if (x + 20 > pipex && x < pipex + 25 && y<pipey + 700-pipey-pipeGap)
return true;
else 
return false;
}