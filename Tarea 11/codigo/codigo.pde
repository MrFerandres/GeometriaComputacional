SistemaSolar sol;

void setup(){
  size(800,800);
  sol = new SistemaSolar(100,random(3,9));
  noStroke();
}

void draw(){
  background(0);
  translate(width/2,height/2);
  float aux=random(0,10);
  if(aux>6){
    for(int i=0;i<60;i++){
      circle(random(-width/2,width/2),random(-height/2,height/2),3);
    }
  }
  sol.Dibujar();
  
}
