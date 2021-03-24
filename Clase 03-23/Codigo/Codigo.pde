/*
Creacion y uso de clases que usan clases
Continuacion de la clase del 03-19
*/

Patron patron;

void setup(){
  size(500,500);
  patron = new Patron();
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
  patron.Dibujar();
  
  patron.Trasladar(new PVector(-100,-100));
  patron.Dibujar();
  
  patron.Rotacion(135);
  patron.Dibujar();
  
  patron.Escalar(1.2);
  patron.Dibujar();

  patron.Simetria(-1,1);
  patron.Dibujar();
    
    
}
