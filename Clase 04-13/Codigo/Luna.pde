class Luna{
  float dist_; //Distancia al planeta. Radio
  float vel_;  //Velocidad de rotacion 
  float tam_;  //Tamaño de la luna
  
  Luna(float dist, float vel, float tam){
    dist_=dist;
    vel_=vel;
    tam_=tam;
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
      circle(0,0,tam_);
    popMatrix();
  
  }
  
}
