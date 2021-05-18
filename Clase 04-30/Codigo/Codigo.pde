//Ejercicios de recursividad para usar fractales
void setup(){
  size(500,500);
  background(255);
}

void draw(){
  translate(width/2,height/2);
  noFill();
  dibujar_circulo(0,0,250);
}

void dibujar_circulo(float x, float y, float r){
  circle(x,y,r);
  
  if(r>10){
    dibujar_circulo(x-r/2,y,r/2);
    dibujar_circulo(x+r/2,y,r/2);
    dibujar_circulo(x,y-r/2,r/2);
    dibujar_circulo(x,y+r/2,r/2);
  }
}
