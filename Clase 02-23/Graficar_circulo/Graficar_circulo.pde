/*
void setup(){
  size(500,500); 
  noLoop();
}

void draw(){
  float x,y;
  float r =100;
  
  for (float i=0; i<=360;i++){
    x = r*cos(radians(i));
    y = r*sin(radians(i));
    circle(x+250,y+250,4);
  }
}*/

float i=0;
void setup(){
  size(500,500);
}

void draw(){
  background(255);
  float x, y;
  float r=100;
  x=r*cos(radians(i))+width/2;
  y=r*sin(radians(i))+height/2;
  fill(255,0,255);
  circle(x,y,10);
  i++;
}
