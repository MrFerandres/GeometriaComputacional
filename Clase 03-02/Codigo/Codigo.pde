void setup(){
  size(800,600); 
  noLoop();
}

void draw(){
  float x=0,y=0,r=200;
  float x2=0,y2=0,r2=r/5;
  float x3=0,y3=0,r3=r/10;
  noFill();
  stroke(255,0,0,20);
  for(float i=0;i<360;i+=0.2){
    for(float t=0; t<100;t++){
      x=r*cos(radians(i+t*0.1))+width/2;
      y=r*sin(radians(i+t*0.1))+height/2;
      
      x2=r2*cos(radians(15*(i+t*0.2)))+x;
      y2=r2*sin(radians(15*(i+t*0.2)))+y;
      
      x3=r3*cos(radians(20*(i+t*0.3)))+x2;
      y3=r3*sin(radians(20*(i+t*0.3)))+y2;
      
      circle(x3,y3,2);
      //circle(x3,y3,2-(100-t)/50);
    }
  }
  
}
