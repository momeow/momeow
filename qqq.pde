PFont font;
void setup(){
  background(255);
  size(200,200);
  fill(0);
  smooth();
  font=createFont("Arial",36,true);
  textFont (font);
  textAlign(CENTER);
}
void draw(){
  textSize(36);
  text("big word",10,30);
  textSize(32);
  text("medium word",mouseX,mouseY);
  textSize(12);
  text("tiny word",240,300);
}
