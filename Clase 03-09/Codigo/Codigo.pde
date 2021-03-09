float ang=0;
void setup(){
  size(500,500);
  background(0);
  //noLoop();
}

void draw(){
  PVector P1, P2, P3, T;
  P1 = new PVector(0,0);
  P2 = new PVector(100,0);
  P3 = new PVector(50,50);
    
  translate(100,100);
  T = new PVector(-50,-25);
  //float ang = 40;
  
  
  /*beginShape();
  vertex(P1.x, P1.y);
  vertex(P2.x, P2.y);
  vertex(P3.x, P3.y);
  endShape(CLOSE);
  */
  
  // Escala
  /*
  float s=0.5;
  P1=escalar(P1,s);
  P2=escalar(P2,s);
  P3=escalar(P3,s);
  */
  
  //Trasladar
  
  P1.add(T);
  P2.add(T);
  P3.add(T);
  
  
  //Rotacion
  P1=rotar(P1, ang);
  P2=rotar(P2, ang);
  P3=rotar(P3, ang);
  
  
  
  beginShape();
  vertex(P1.x, P1.y);
  vertex(P2.x, P2.y);
  vertex(P3.x, P3.y);
  endShape(CLOSE);
  
  fill(255,0,0);
  circle(P1.x, P1.y, 10);
  circle(P2.x, P2.y, 10);
  circle(P3.x, P3.y, 10);
  ang ++;
}













PVector rotar(PVector a, float ang){
  float alpha, beta;
  alpha = a.x*cos(radians(ang)) - a.y*sin(radians(ang));
  beta = a.x*sin(radians(ang)) + a.y*cos(radians(ang));
  a.x=alpha;
  a.y=beta;
  return a;
}

PVector escalar(PVector algo, float s){
  algo.x=algo.x*s;
  algo.y=algo.y*s;
  return algo;
}



// Repaso de la clase pasada
/*
void setup(){
  size(500,500);
  background(0);
}

void draw(){
  PVector P1, Pr, T, Prr;
  P1 = new PVector(50,50);
  Pr = new PVector();
  T = new PVector(100,50);
  Prr = new PVector(0,0);
  
  // Escala de un vector
  Pr.x = P1.x*2;
  Pr.y = P1.y*2;
  
  // Traslacion de un Vector
  T.x = T.x + P1.x;
  T.y = T.y + P1.y;
  
  // Rotacion de Vector
  float angulo = 20;
  Prr.x = Pr.x*cos(radians(angulo)) - Pr.y*sin(radians(angulo));
  Prr.y = Pr.x*sin(radians(angulo)) + Pr.y*cos(radians(angulo));
  
  
  circle(P1.x, P1.y, 10);
  circle(Pr.x, Pr.y, 10);
  circle(T.x, T.y, 10);
  circle(Prr.x, Prr.y, 10);
}*/
