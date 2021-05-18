//Colisiones como si fuera mesa de billar  

Billar [] bola;
int numbolas =1000;

void setup(){
  size(500,500);
  bola = new Billar[numbolas];
  for (int i=0;i<numbolas;i++){
    bola[i]=new Billar();
  }
  
}

void draw(){
  background(0);
  for(int i=0;i<numbolas;i++) bola[i].mover();
  
  for(int i=0;i<numbolas;i++){
    for(int j=i+1;j<numbolas;j++){
      colisionBolas(bola[i],bola[j]);
    }
  }
}


void colisionBolas(Billar bola1, Billar bola2){
  if (dist(bola1.x,bola1.y,bola2.x,bola2.y)<bola1.d/2+bola2.d/2){
    bola1.spdx*=-1;
    bola1.spdy*=-1;
    bola2.spdx*=-1;
    bola2.spdy*=-1;
  }
}
