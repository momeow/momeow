PFont font;
int rand;
String message ="Superstar Michael Jackson forged a close association with The Simpsons during the height of the animated comedys early 90s popularity and now, one of the shows producers has a grim theory about the singers true motives. Longtime Simpsons writer and executive producer Al Jean was at the reins during the cartoons third season in 1991, which opened with the episode Stark Raving Dad.";

int i=1;

void setup(){
  frameRate(10);
  size(800,800);
  fill(0);
  font = createFont("Arial",20,true);
}

void draw(){
  textFont(font);
  if (mousePressed){
  text(message.charAt(i-1),mouseX,mouseY);
  if(i<message.length()){
    i++;
  }
  else{i=1;}
  }
  }
