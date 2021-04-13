class Planeta{
  float dist_;
  float vel_;
  float tam_;
  Luna luna;
  
  Planeta(float dist, float vel, float tam){
    dist_=dist;
    vel_=vel;
    tam_=tam;
    luna = new Luna(dist*0.3,vel*2,tam*0.3);
  }
  
  void Dibujar(){
    pushMatrix();
      float theta= millis()/1000.0;
      rotate(theta*vel_);
      translate(dist_,0);
      /*
      //Ejes coordenados
        stroke(255,0,0);
        line(-width/2,0,width/2,0);
        stroke(0,255,0);
        line(0,height/2,0,-height/2);
      */
      fill(0,0,255);
      circle(0,0,tam_);//Planeta
      fill(255);
      luna.Dibujar();
    popMatrix();
  }
}
