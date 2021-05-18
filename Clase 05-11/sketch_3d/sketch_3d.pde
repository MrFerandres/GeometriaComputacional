float theta=0;
void setup(){
  size(500,500,P3D); //OpenGL
}

void draw(){
  background(255);
  translate(width/2,height/2,0);
  
  
  pushMatrix();
    translate(-150,0,0);
    rotateX(radians(theta));
    rotateZ(radians(theta));
    DibujarEjes3D(100);
    box(50);
  popMatrix();
  
  pushMatrix();
    translate(150,0,0);
    rotateX(radians(theta));
    rotateZ(radians(theta));
    DibujarEjes3D(100);
    sphere(50);
  popMatrix();
  
  
  
  theta++;
  
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
