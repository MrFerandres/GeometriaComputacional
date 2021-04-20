/*
void setup(){
  size(500,500);
  noLoop();
}

void draw(){
  translate(width/2,height/2);
  stroke(0,0,255);
  strokeWeight(2);
  noFill();
  float [] x={};
  float [] y={};
  float [] x2={};
  float [] y2={};
  float [] x3={};
  float [] y3={};
  float h=100;
  
    //Cosas en gris
  stroke(145,145,145);
  
  for (float theta=0; theta<360;theta=theta+360/6){
    y2=append(y2,h*cos(radians(theta)));
    x2=append(x2,h*sin(radians(theta)));
  }
  for(int i=0;i<6;i++)
    circle(x2[i],y2[i],100);
  
  pushMatrix();
    rotate(radians(30));
    for (float theta=0; theta<360;theta=theta+360/6){
      y3=append(y3,h*0.9*cos(radians(theta)));
      x3=append(x3,h*0.9*sin(radians(theta)));
    }
    for(int i=0;i<6;i++)
      circle(x3[i],y3[i],100);
  popMatrix();
  
  //Circulos en azul
  for (float theta=0; theta<360;theta=theta+360/6){
    y=append(y,h/2*cos(radians(theta)));
    x=append(x,h/2*sin(radians(theta)));
  }
  stroke(0,0,255);
  for(int i=0;i<6;i++)
    circle(x[i],y[i],100);
  
  stroke(0,0,255);
  circle(0,0,300);
  circle(0,0,100);
}*/




/*
void setup(){
  size(500,500);
  background(0);
  noLoop();
  
}

void draw(){
  translate(width/2,height/2);
  float [] x={};
  float [] y={};
  float h=160;
  
  for (float theta=0; theta<360;theta=theta+360/7){
    y=append(y,160*cos(radians(theta)));
    x=append(x,160*sin(radians(theta)));
  }
  strokeWeight(2);
  stroke(255,0,0);
  noFill();
  rotate(PI/3);
  beginShape();
    vertex(x[0],y[0]);
    vertex(x[2],y[2]);
    vertex(x[4],y[4]);
    vertex(x[6],y[6]);
    vertex(x[1],y[1]);
    vertex(x[3],y[3]);
    vertex(x[5],y[5]);
    vertex(x[0],y[0]);
  endShape();
}
*/
