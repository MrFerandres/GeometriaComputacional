float n=0,x=0;

void setup(){
  size(360,200);
  background(255);
}

void draw(){
  point(x, height/2 + sin(n)*100);
  n = n + 0.05;
  x = x + 1;
}
  
