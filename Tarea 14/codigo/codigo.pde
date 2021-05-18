
float theta=0;

void setup(){
  size(500,500,P3D);
}

void draw(){
  background(255);
  translate(width/2,height/2,0);
  rotateX(radians(90));
  rotateZ(radians(30));
  
  theta+=1;
  rotateZ(radians(theta));
  
  //DibujarEjes3D(100);
  stroke(0,255,0);
  triangulo();
  
  pushMatrix();
    translate(0,0,-150);
    stroke(0);
    fill(129, 105, 75 );
    box(60);
  popMatrix();
  pushMatrix();
    fill(255,0,0);
    translate(50,0,-10);
    sphere(30);
    translate(-100,0,20);
    fill(0,255,0);
    sphere(30);
    translate(50,-50,-30);
    fill(255,255,0);
    sphere(30);
    translate(0,100,20);
    fill(0,255,255);
    sphere(30);
  popMatrix();

}

void triangulo(){
  beginShape();
  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex(   0,    0,  100);
  
  
  vertex( 100, -100, -100);
  vertex( 100,  100, -100);
  vertex(   0,    0,  100);
  
  vertex( 100, 100, -100);
  vertex(-100, 100, -100);
  vertex(   0,   0,  100);
  
  vertex(-100,  100, -100);
  vertex(-100, -100, -100);
  vertex(   0,    0,  100);
  endShape();
}

void DibujarEjes3D(float dim){
  //Eje X
  stroke(255,0,0);
  line(0,0,0,dim,0,0);
  
  //Eje Y
  stroke(0,255,0);
  line(0,0,0,0,dim,0);
  
  //Eje Z
  stroke(0,0,255);
  line(0,0,0,0,0,dim);
}
