/*
Creacion y uso de clases
*/
Triangulo triangulo;

void setup(){
  size(500,500);
  triangulo = new Triangulo();
  noLoop();
}

void draw(){
  background(255);
  translate(width/2, height/2);
  
  stroke(255,0,0);
  line(-width/2,0,width/2,0);
  stroke(0,255,0);
  line(0,-height/2,0,height/2);

  stroke(0);
  triangulo.Dibujar();
  
  
  stroke(0,0,255);
  triangulo.Simetria(1,-1);
  triangulo.Dibujar();
  
  PVector t;
  t = new PVector(20,20);
  triangulo.Rotar(180);
  triangulo.Dibujar();
}
