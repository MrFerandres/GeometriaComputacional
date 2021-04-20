class Luna{
  float dist_; //Distancia al planeta. Radio
  float vel_;  //Velocidad de rotacion 
  float tam_;  //Tamaño de la luna
  float num_;
  
  Luna(float dist, float vel, float tam, float num){
    dist_=dist;
    vel_=vel;
    tam_=tam;
    num_=num;
  }
  
  
  void Dibujar(){
    
    plural(num_,vel_,dist_,tam_);
    
  
  }
  
}


void plural(float num_, float vel_, float dist_, float tam_){
  for(int i=0;i<num_;i++)
    {
      pushMatrix();
        float theta= millis()/1000.0;
        rotate((radians(360*i/num_)+theta)*vel_);
        translate(dist_,0);
        circle(0,0,tam_);
      popMatrix();
    }
}
