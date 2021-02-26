//Mi version de espiral

/*void setup(){
  size(500,500); 
  noLoop();
}

void draw(){
  float x,y;
  float r =0;
  
  for (float i=0; i<=1800;i++){
    x = r*cos(radians(i));
    y = r*sin(radians(i));
    circle(x+250,y+250,4);
    if (i%5==0)
      r++;
  }
}*/


//Espiral de arquimides

/*void setup(){
  size(500,500);
  noLoop();
}

void draw(){
  float x,y,r,a=0,b=0.05;
  for (float theta = 0; theta <1800; theta++){
    r=a+b*theta;
    x=r*cos(radians(theta))+width/2;
    y=r*sin(radians(theta))+height/2;
    circle(x,y,5);
  }
}*/

//Espiral logaritmica

void setup(){
  size(500,500);
  noLoop();
}

void draw(){
  float x,y,r,a=1,b=1.2;
  float vueltas=360;
  beginShape();
  for(float theta =0; theta<8*vueltas; theta+=30){
    r=a*pow(b,radians(theta));
    x=r*cos(radians(theta));
    y=r*sin(radians(theta));
    vertex(width/2+x,height/2+y);
  }
  endShape();
}
