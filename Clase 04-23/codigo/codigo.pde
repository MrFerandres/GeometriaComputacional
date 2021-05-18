float x,y,theta;
float spdx,spdy,spdr;
boolean irx=true,iry=true;

void setup(){
  size(500,500); 
  x=0;
  y=0;
  theta=0;
  spdx=1;
  spdy=2;
  spdr=radians(1);
}

//Mi version
/*
void draw(){
  background(0);
  pushMatrix();
    translate(width/2, height/2);
    circle(x,y,10);
  popMatrix();
  if(x>=240)
    irx=false;
  if(x<=-240)
    irx=true;
   if(y>=240)
    iry=false;
  if(y<=-240)
    iry=true;
    
  if(irx)
   x+=spdx;
  if(!irx)
   x-=spdx;
  if(iry)
   y+=spdy;
  if(!iry)
   y-=spdy;
   
   print(x,y,'\n');
}*/

//Mi version pero siguientdo la clase
void draw(){
  background(0);
  stroke(255);
  
  pushMatrix();
    translate(width/2, height/2);
    pushMatrix();
      translate(-35,-35);
      rect(x,y,70,70);
    popMatrix();
  popMatrix();
  x+=spdx;
  y+=spdy;
  theta+=spdr;
  colision();
}

void colision(){
  if(abs(x)>=width/2-35){
    fill(random(255),random(255),random(255));
    spdx*=-1; 
  }
  if(abs(y)>=height/2-35){
    spdy*=-1;
    fill(random(255),random(255),random(255));
  }
  
}
