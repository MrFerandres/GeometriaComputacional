//Ejercicios de recursividad para usar fractales
float tetha=0;
void setup(){
  size(500,500);
  background(255);
  noStroke();
}

void draw(){
  background(255);
  translate(width/2,height/2);
  rotate(radians(tetha));
  tetha++;
  noFill();
  dibujar_circulo(0,0,250);
}

void dibujar_circulo(float x, float y, float r){
  fill(random(250),random(250),random(250),random(255));
  circle(x,y,r);
  
  if(r>20){
    dibujar_circulo(x-r/2,y,r/2);
    dibujar_circulo(x+r/2,y,r/2);
    dibujar_circulo(x,y-r/2,r/2);
    dibujar_circulo(x,y+r/2,r/2);
  }
}
