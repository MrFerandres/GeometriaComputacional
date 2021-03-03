float a=0;

void setup(){
  size(1200,800);
  //background(151, 43, 221 );
 
}

void draw(){
  background(24, 200, 200);
  float [] xs={};
  float [] ys={};
  int contador=0;
  float x,y,r,b=1.05;
  float vueltas=30;
  strokeWeight(5);
  stroke(61, 214, 212);
  noFill();
  beginShape();
  for(float theta =0; theta<360*vueltas; theta+=1){  
    r=a*pow(b,radians(theta));
    x=r*cos(radians(theta));
    y=r*sin(radians(theta));
    vertex(width/2+x,height/2+y);
    if((theta%(360/12)==0) ){
      //print(y," -- ",contador,"\n");
      xs=append(xs,x+width/2);
      ys=append(ys,y+height/2);
      contador++;
    }
      
  }
  endShape();
  
  noStroke();
  
  //print("llego al for",contador,"\n");
  for(int s=contador-8;s>8;s-=8){
    //circle(xs[s],ys[s],15);
    fill(255,0,0);
    beginShape();
    vertex(xs[s],ys[s]);
    vertex(xs[s+1],ys[s+1]);
    vertex(xs[s-8],ys[s-8]);
    vertex(xs[s-9],ys[s-9]);
    endShape();
    
    fill(0,255,0);
    beginShape();
    vertex(xs[s+2],ys[s+2]);
    vertex(xs[s+3],ys[s+3]);
    vertex(xs[s-10],ys[s-10]);
    vertex(xs[s-11],ys[s-11]);
    endShape();
    
    fill(151, 43, 221 );
    beginShape();
    vertex(xs[s+1],ys[s+1]);
    vertex(xs[s+2],ys[s+2]);
    vertex(xs[s-9],ys[s-9]);
    vertex(xs[s-10],ys[s-10]);
    endShape();
    
  }
  a+=0.005;
}
