PiezaT tetris;

void setup(){
  size(500,500);
  noLoop();
  background(0);
  tetris = new PiezaT();
}
void draw(){
  translate(width/2-50,height/2);
  float i= 360/6;
  translate(50,0);
  pushMatrix();
    rotate(radians(i*0));
    translate(50,0);
    tetris.Dibujar(255,0,0);
  popMatrix();
  pushMatrix();
    rotate(radians(i*1));
    translate(50,0);
    tetris.Dibujar(255,255,0);
  popMatrix();
  pushMatrix();
    rotate(radians(i*2));
    translate(50,0);
    tetris.Dibujar(0,255,0);
  popMatrix();
  pushMatrix();
    rotate(radians(i*3));
    translate(50,0);
    tetris.Dibujar(0,255,255);
  popMatrix();
  pushMatrix();
    rotate(radians(i*4));
    translate(50,0);
    tetris.Dibujar(0,0,255);
  popMatrix();
  pushMatrix();
    rotate(radians(i*5));
    translate(50,0);
    tetris.Dibujar(255,0,255);
  popMatrix();
  
}
