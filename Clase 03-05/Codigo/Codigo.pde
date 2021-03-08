//Rotacion de un vector
PVector u, d, up;
float ang=0;

void setup(){
  size(500,500);
  //noLoop();
  u = new PVector(200,50);
  up= new PVector();
  background(255);
}

void draw(){
  
  stroke(255,0,0);
  line(0,0,u.x,u.y);
  
  up.x = u.x* cos(radians(ang)) - u.y*sin(radians(ang));
  up.y = u.x* sin(radians(ang)) + u.y*cos(radians(ang));

  stroke(0,255,0);
  line(0,0,up.x,up.y);
  print(u.mag(),up.mag(),"\n");
  ang+=0.5;
}




//Traslacion de vectores
/*
PVector u, d, up;
float s=2;

void setup(){
  size(500,500);
  noLoop();
  u = new PVector(120,200);
  d = new PVector(0,50);
  up= new PVector();
  background(255);
}

void draw(){
  
  stroke(255,0,0);
  line(0,0,u.x,u.y);
  
  up.x = u.x+d.x;
  up.y = u.y+d.y;

  stroke(0,255,0);
  line(0,0,up.x,up.y);
}
*/



//Escala de vectores
/*
PVector u, up;
float s=2;

void setup(){
  size(500,500);
  noLoop();
  u = new PVector(120,200);
  up = new PVector();
  background(255);
}

void draw(){
  
  stroke(255,0,0);
  line(0,0,u.x,u.y);
  
  up.x = s*u.x;
  up.y = s*u.y;

  stroke(0,255,0);
  line(0,0,up.x,up.y);
}
*/




//Vectores
/*
PVector v, u, w;

void setup(){
  size(500,500);
  noLoop();
  u = new PVector(120,200);
  v = new PVector(200,100);
  background(255);
}

void draw(){
  w = PVector.add(u,v);
  
  stroke(255,0,0);
  line(0,0, u.x, u.y);
  stroke(0,255,0);
  line(0,0, v.x, v.y);
  stroke(0,255,0);
  line(u.x,u.y, w.x, w.y);
  stroke(255,0,0);
  line(v.x,v.y, w.x, w.y);
  
  float mag_u=u.mag(),dir_u;
  
  stroke(0,0,255);
  line(0,0, w.x, w.y);
  
  dir_u=atan(u.y/u.x);
  print(mag_u,dir_u);
}*/
