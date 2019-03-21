String second;
void setup(){
background(hour()*11,minute()*4,second()*4);
size(800,500);
textSize(150);
textAlign(CENTER);
}
void draw(){
  background(hour()*10,minute()*4,second()*4);

  if(keyPressed){
    text(hour()+";"+minute()+":"+second,0,180,800,350);
  }
}
