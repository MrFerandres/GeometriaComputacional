class Planeta{
  float dist_;
  float vel_;
  float tam_;
  int alpha;
  float r,g,b;
  Luna luna;
  int direccion;
  
  Planeta(float dist, float vel, float tam){
    dist_=dist;
    vel_=vel;
    tam_=tam;
    float aux2=random(10);
    if(aux2>5){
      direccion=-1;
    }
    else{
      direccion=1;
    }
    r=random(100,255);
    g=random(100,255);
    b=random(100,255);
    float aux=random(0,9);
    alpha=int(aux);
    luna = new Luna(tam,vel*2,tam*0.3,alpha);
    
  }
  
  void Dibujar(){
    pushMatrix();
      noFill();
      stroke(255);
      circle(0,0,dist_*2);
      
      float theta= millis()/1000.0*int(direccion);
      rotate(theta*vel_);
      translate(dist_,0);
      
      
      fill(r,g,b);
      noStroke();
      circle(0,0,tam_);//Planeta
      fill(255);
      luna.Dibujar();
    popMatrix();
  }
}
