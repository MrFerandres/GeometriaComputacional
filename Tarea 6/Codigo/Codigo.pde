void setup(){
 size(800,600); 
 background(255,255,255);
 
  int alto = height/3;
  int ancho = width/4;
  
  stroke(200,200,200);
  for(int i=alto; i<600; i+=alto){
    line(0,i,800,i);
  }
  
  for(int i=ancho; i<800; i+=ancho){
    line(i,0,i,600);
  }
  
  
  for(int i=1; i<=3; i++){
    stroke(0,0,255);
    strokeWeight(3);
    square(i*ancho-50,alto-50,100);
    
    stroke(0,255,0);
    strokeWeight(2);
    for (int j=95;j>0;j-=10){
      circle(i*ancho,alto,j);
    } 
  } 
}
