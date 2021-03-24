class Patron{
  Triangulo []t ;
  
  Patron(){
    t= new Triangulo[3];
    
    
    for (int i =0; i<3; i++){
      t[i]= new Triangulo();
    }
    
    t[1].Trasladar(new PVector(40,0));
    t[2].Trasladar(new PVector(20,30));
  }
  
  void Dibujar(){
    for (int i=0;i<3;i++){
      t[i].Dibujar();
    }
  }
  
  void Trasladar(PVector trasla){
    for (int i=0;i<3;i++){
      t[i].Trasladar(trasla);
    }
  }
  
  
  
  
  
  
  
}
