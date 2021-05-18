PVector[] p = new PVector[8];
PVector[] pp = new PVector[8];
PVector[] pr = new PVector[8];
float t=10;

void setup(){
  size(500,500);
  
  
  p[0]= new PVector(1,1,1);
  p[1]= new PVector(-1,1,1);
  p[2]= new PVector(-1,-1,1);
  p[3]= new PVector(1,-1,1);
  p[4]= new PVector(1,1,-1);
  p[5]= new PVector(-1,1,-1);
  p[6]= new PVector(-1,-1,-1);
  p[7]= new PVector(1,-1,-1);
  
  for (int i =0; i<8; i++){
    pp[i]= new PVector(0,0);
    p[i].mult(100);
    pr[i]= new PVector(0,0,0);
  }
}

void draw(){
  background(255);
  
  translate(width/2, height/2);
  strokeWeight(5);
  
  for (int i=0;i<8;i++){
    pr[i]=RotacionZ(p[i],t);
    pr[i]=RotacionX(pr[i],t);
  }
  
  for (int i=0; i<8; i ++){
    pp[i].x= pr[i].x *1 + pr[i].y*0 + pr[i].z*0;
    pp[i].y= pr[i].x *0 + pr[i].y*1 + pr[i].z*0;
    point(pp[i].x, pp[i].y);
  }
  DibujarRectas();
  t++;
}

void DibujarRectas(){
  //Cara 1
  line(pp[0].x,pp[0].y,pp[1].x,pp[1].y);
  line(pp[0].x,pp[0].y,pp[3].x,pp[3].y);
  line(pp[1].x,pp[1].y,pp[2].x,pp[2].y);
  line(pp[3].x,pp[3].y,pp[2].x,pp[2].y);
  //Enlaces
  line(pp[0].x,pp[0].y,pp[4].x,pp[4].y);
  line(pp[1].x,pp[1].y,pp[5].x,pp[5].y);
  line(pp[2].x,pp[2].y,pp[6].x,pp[6].y);
  line(pp[3].x,pp[3].y,pp[7].x,pp[7].y);
  //Cara2
  line(pp[4].x,pp[4].y,pp[5].x,pp[5].y);
  line(pp[4].x,pp[4].y,pp[7].x,pp[7].y);
  line(pp[6].x,pp[6].y,pp[5].x,pp[5].y);
  line(pp[6].x,pp[6].y,pp[7].x,pp[7].y);
}

void proyeccionortogonal(){
  for (int i=0; i<8; i ++){
    pp[i].x= p[i].x *1 + p[i].y*0 + p[i].z*0;
    pp[i].y= p[i].x *0 + p[i].y*1 + p[i].z*0;
    point(pp[i].x, pp[i].y);
  }
  
}

PVector RotacionZ(PVector P, float theta){
  PVector PR;
  PR = new PVector(0,0,0);
  PR.x=P.x*cos(radians(theta))-P.y*sin(radians(theta));
  PR.y=P.x*sin(radians(theta))+P.y*cos(radians(theta));
  PR.z=P.z;
  
  return PR;
}

PVector RotacionX(PVector P, float theta){
  PVector PR;
  PR = new PVector(0,0,0);
  PR.x=P.x;
  PR.y=P.y*cos(radians(theta))-P.z*sin(radians(theta));
  PR.z=P.y*sin(radians(theta))+P.z*cos(radians(theta));
  
  return PR;
}
