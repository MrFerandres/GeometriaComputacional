class SistemaSolar{
  Planeta[] tierra;
  float tamSol_;
  int cant_;
  
  SistemaSolar(float tam, float cant){
    tamSol_=tam;
    cant_=int(cant);
    tierra = new Planeta[cant_];
    float aux;
    for(int i=0; i<cant_;i++){
      aux=tam*random(0.1,0.5);
      
      tierra[i] = new Planeta(tamSol_+(tamSol_*0.6*i+1),random(0.09,2),aux);
      
      
    }
  }
  
  void Dibujar(){
    
    PImage img;
    PGraphics maskImage;
    
    img = loadImage("Luismi.png");
    maskImage = createGraphics(90,96);
    maskImage.beginDraw();
    maskImage.circle(50,50,90);
    maskImage.endDraw();
    img.mask(maskImage);
    
      //Sol
        //stroke(255,0,0);
        //line(-width/2,0,width/2,0);
        //stroke(0,255,0);
        //line(0,height/2,0,-height/2);
      
      
      fill(255,255,0);
      circle(0,0,tamSol_);//Sol
      image(img,-50,-50);
      

      for(int i=0; i<cant_;i++){
        tierra[i].Dibujar();
      }
  }
  
}
