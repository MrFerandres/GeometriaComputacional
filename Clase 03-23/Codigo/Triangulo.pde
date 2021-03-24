class Triangulo{
  PVector p1, p2, p3, c;
  
  Triangulo(){
    p1 = new PVector(10,10);
    p2 = new PVector(50,10);
    p3 = new PVector(30,40);
    c = new PVector(30,20); 
  }
  
  void Dibujar(){  
    beginShape();
      vertex(p1.x,p1.y);
      vertex(p2.x,p2.y);
      vertex(p3.x,p3.y);
    endShape(CLOSE);
    circle(c.x,c.y,5); 
  }
  
  void Trasladar(PVector t){
    p1.add(t);
    p2.add(t);
    p3.add(t);
    c.add(t); 
  }
  
  void Rotar(float theta){
    PVector temp;
    temp = p1.copy();
    p1.x = temp.x * cos(radians(theta)) - temp.y*sin(radians(theta));
    p1.y = temp.x * sin(radians(theta)) + temp.y*cos(radians(theta));
    
    temp = p2.copy();
    p2.x = temp.x * cos(radians(theta)) - temp.y*sin(radians(theta));
    p2.y = temp.x * sin(radians(theta)) + temp.y*cos(radians(theta));
    
    temp = p3.copy();
    p3.x = temp.x * cos(radians(theta)) - temp.y*sin(radians(theta));
    p3.y = temp.x * sin(radians(theta)) + temp.y*cos(radians(theta));
    
    temp = c.copy();
    c.x = temp.x * cos(radians(theta)) - temp.y*sin(radians(theta));
    c.y = temp.x * sin(radians(theta)) + temp.y*cos(radians(theta));
  }
  
  void Escalar(float s){
    p1.x *=s;
    p1.y *=s;
    p2.x *=s;
    p2.y *=s;
    p3.x *=s;
    p3.y *=s;
    c.x *=s;
    c.y *=s;
  }
  
  void Simetria(float alphax, float alphay){
    p1.x *=alphax;
    p1.y *=alphay;
    p2.x *=alphax;
    p2.y *=alphay;
    p3.x *=alphax;
    p3.y *=alphay;
    c.x *=alphax;
    c.y *=alphay;
  }
  
  void Reiniciar(){
    p1.x = 10;
    p1.y = 10;
    p2.x = 50;
    p2.y = 10;
    p3.x = 30;
    p3.y = 40;
    c.x = 30;
    c.y = 20;
  }
}
