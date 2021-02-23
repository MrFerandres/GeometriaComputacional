float d=10;
boolean inc = true;

void setup(){
  size(500,500);
  colorMode(HSB, 100);
}

void draw(){
  background(100);
  if (d<300 && inc){
    circle(width/2,height/2,d);
    for(int i=int(d-1); i>0; i-=10){
      stroke(i*(0.3),100,100);
      circle(width/2,height/2,i);
    }
  }

  if(d>10 && !inc){
    circle(width/2,height/2,d);
    for(int i=int(d-1); i>0; i-=10){
      stroke(i*(0.3),100,100);
      circle(width/2,height/2,i);
    }
  }
  if ( (d>300) || (d<10))
    inc=!inc;
  if (inc)
    d++;
  if(!inc)
    d--;
}
