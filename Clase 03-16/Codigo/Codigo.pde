void setup(){
  size(800,600);
  noLoop();
}

void draw(){
  background(255);
  
  
  for (int i =0; i<30; i++){
    flower(random(100,700),random(100,500),random(50));
  }
  
}

void flower(float x, float y,float d){
  
  fill(255,255,0);
  circle(x,y,d);
  fill(255,0,0,128);
  circle(x,y-d/2,d/2);
  circle(x-d/2,y,d/2);
  circle(x,y+d/2,d/2);
  circle(x+d/2,y,d/2);
  
}
