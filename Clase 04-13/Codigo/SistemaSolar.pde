class SistemaSolar{
  Planeta tierra;
  float tamSol_;
  
  SistemaSolar(float tam){
    tamSol_=tam;
    tierra = new Planeta(150,1,tam*0.3);
    
  }
  
  void Dibujar(){
      //Sol
        //stroke(255,0,0);
        //line(-width/2,0,width/2,0);
        //stroke(0,255,0);
        //line(0,height/2,0,-height/2);
      fill(255,255,0);
      circle(0,0,100);//Sol
      tierra.Dibujar();
  }
  
}
