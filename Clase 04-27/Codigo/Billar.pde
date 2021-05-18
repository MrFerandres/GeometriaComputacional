class Billar{
  float x,y,d;
  float spdx, spdy;
  float friccion;
  
  Billar(){
    d=30;
    x=random(100,400);
    y=random(100,400);
    spdx=random(-3,3);
    spdy=random(-3,3);
    friccion = 1;
    print("x=",x,"\ny=",y,"\nspdx=",spdx,"\nspdy=",spdy);
  }
  
  void mover(){
    circle(x,y,d);
    x+=spdx/friccion;
    y+=spdy/friccion;
    if(x>=width-d/2 || x<= d/2){
      spdx*=-1;
    }
    if(y>=height-d/2 || y<= d/2){
      spdy*=-1;
    }
    //friccion+=0.01;
    
  }
  
  
  
}
