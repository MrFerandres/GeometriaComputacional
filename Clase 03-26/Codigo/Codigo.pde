Patron p;

void setup(){
  size(800,500);
  p=new Patron("HuellaPie1.png");
  noLoop();
}

/*
// Patron 1
void draw(){
  background(255);
  translate(0,height/2);
  for(int i=0; i<6; i++){
    pushMatrix();
      translate(p.ancho*i,0);
      p.Dibujar();
    popMatrix();
  }
}*/

/*
// Patron 2
void draw(){
  background(255);
  translate(0,height/2);
  for(int i=0; i<6; i++){
    pushMatrix();
      translate(p.ancho*i,0);
      scale(1,-1);
      p.Dibujar();
    popMatrix();
  }
}*/

/*
// Patron 3
void draw(){
  background(255);
  translate(0,height/2);
  float r=1;
  for(int i=0; i<6; i++){
    pushMatrix();
      translate(p.ancho*i,0);
      scale(1,r);
      p.Dibujar();
    popMatrix();
    r=r*-1;
  }
}*/

/*
// Patron 4
void draw(){
  background(255);
  translate(0,height/2);
  float r=0;
  for(int i=0; i<6; i++){
    pushMatrix();
      if(i%2==0){
        r=1;
        translate(p.ancho*i,0);
      }
      else{
        r=-1;
        translate(p.ancho*(i+1),0);
      }
      scale(r,1);
      p.Dibujar();
    popMatrix();
  }
}*/


// Patron 5
void draw(){
  background(255);
  translate(0,height/2);
  for(int i=0; i<6; i++){
    pushMatrix();
      translate(p.ancho*(i+1),0);
      scale(-1,-1);
      p.Dibujar();
    popMatrix();
    pushMatrix();
      translate(p.ancho*i,0);
      p.Dibujar();
    popMatrix();
  }
}
