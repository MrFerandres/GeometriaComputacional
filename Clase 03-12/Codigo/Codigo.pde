//Uso de Rotate, translate y push/pop

void setup(){
  size(500,500);
}

void draw(){
  background(255);
  
  pushMatrix();
    translate(width/2, height/2);
    rotate(radians(20));
    stroke(255,0,0);
    line(0,0,100,0);
    stroke(0,255,0);
    line(0,0,0,100);
    stroke(0);
    rect(0,0,50,50);
    
    pushMatrix();
      rotate(radians(20));
      stroke(255,0,0);
      line(0,0,100,0);
      stroke(0,255,0);
      line(0,0,0,100);
      stroke(0);
      rect(0,0,50,50);
    popMatrix();
    
    rotate(radians(160));
      stroke(255,0,0);
      line(0,0,100,0);
      stroke(0,255,0);
      line(0,0,0,100);
      stroke(0);
      rect(0,0,50,50);
      
  popMatrix();
  
  stroke(255,0,0);
  line(0,0,100,0);
  stroke(0,255,0);
  line(0,0,0,100);
  stroke(0);
  rect(0,0,50,50);
  
  
}
