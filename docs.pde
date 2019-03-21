int dotx=1; //this is our starting number
int timelapsed;
void setup (){
  smooth(); //this makes our graphics anti-aliased
  background (255);
  size (640, 480);
  noStroke();
  fill(0);
}

void draw (){
   // nothing in here, we don’t want automation
}

void mousePressed (){ //only on mouse click
  ellipse ( mouseX, mouseY, 2,2); // draws small circles
  textSize(10);
  text(dotx, mouseX+10, mouseY+10); //offset from dot
  dotx++; //our dot number increases automatically
}

void keyPressed (){ //any key will output an image
  timelapsed=int(millis()/1000);
  save ("dot_to_dot"+key+".png"); //save the final piece 
}
