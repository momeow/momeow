int dotx=1; //this is our starting number
PImage pic;
PGraphics topLayer;
boolean showImage = true;
void setup (){
  smooth(); //this makes our graphics anti-aliased
  background (255);
  size (500, 500);
  noStroke();
  fill(0);
  topLayer = createGraphics(500,500);
  pic=loadImage("20190314_160248.jpg");
  
}

void draw (){
  if(showImage== false){background(225);}
  else{image(pic,0,0);}
  image(topLayer,0,0);
   // nothing in here, we don’t want automation
}

void mousePressed (){ 
  topLayer.beginDraw();//only on mouse click
  topLayer.ellipse ( mouseX, mouseY, 2,2); // draws small circles
  topLayer.textSize(10);
  topLayer.text(dotx, mouseX+10, mouseY+10); //offset from dot
  dotx++; //our dot number increases automatically
  topLayer.endDraw();
}

void keyPressed (){ //any key will output an image
if(key=='x'){
  showImage=!showImage;}
  else{
  
  save ("dot_to_dot"+key+".png"); //save the final piece 
}
}
