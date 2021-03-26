class Patron{
  PImage img;
  float alto;
  float ancho;
  
  Patron(String archivo){
    img = loadImage(archivo);
    alto =img.height;
    ancho=img.width;
  }
  
  void Dibujar(){
    image(img,0,0);  
  }
  
  
}
