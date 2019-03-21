String minute;
String second;
boolean showTime=false;
void setup(){
background(hour()*11,minute()*4,second()*4);
size(800,500);
textSize(150);
textAlign(CENTER);
}
void draw(){
  background(hour()*10,minute()*4,second()*4);
  minute=nf(minute(),2);
  second=nf(second(),2);
  //line(hour()*32,0,hour()*32,150);
  //line(minute()*11,150,minute()*10,300);
  //line(second()*11,300,second()*10,450);
  if(showTime==true){
      //Press any key to see what time it is
    text(hour()+";"+minute()+":"+second,0,180,800,350);
  }
}
void keyPressed(){
  showTime=!showTime;
}
