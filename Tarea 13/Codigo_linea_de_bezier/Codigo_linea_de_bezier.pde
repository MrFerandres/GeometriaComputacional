//Lineas de Bezier
float[] px = {40,100,200,300,400,500};
float[] py = {40,100,200,300,400,500};
float t=0;

void setup(){
  size(800,800);
}

void draw(){
  background(255);
  strokeWeight(1);
  if(t<=1){
    stroke(0,0,255);
    for (int i=0; i<5;i++){
      line(px[i],py[i],px[i+1],py[i+1]);
    }
    
    float q1x=px[0]*(1-t) + px[1]*t;
    float q1y=py[0]*(1-t) + py[1]*t;
    
    float q2x=px[1]*(1-t) + px[2]*t;
    float q2y=py[1]*(1-t) + py[2]*t;
    
    float q3x=px[2]*(1-t) + px[3]*t;
    float q3y=py[2]*(1-t) + py[3]*t;
    
    float q4x=px[3]*(1-t) + px[4]*t;
    float q4y=py[3]*(1-t) + py[4]*t;
    
    float q5x=px[4]*(1-t) + px[5]*t;
    float q5y=py[4]*(1-t) + py[5]*t;
    
    stroke(0,255,255);
    line(q1x,q1y,q2x,q2y);
    line(q2x,q2y,q3x,q3y);
    line(q3x,q3y,q4x,q4y);
    line(q4x,q4y,q5x,q5y);
    
    float r1x=q1x*(1-t) + q2x*t;
    float r1y=q1y*(1-t) + q2y*t;
    
    float r2x=q2x*(1-t) + q3x*t;
    float r2y=q2y*(1-t) + q3y*t;
    
    float r3x=q3x*(1-t) + q4x*t;
    float r3y=q3y*(1-t) + q4y*t;
    
    float r4x=q4x*(1-t) + q5x*t;
    float r4y=q4y*(1-t) + q5y*t;
    
    stroke(0,255,0);
    line(r1x,r1y,r2x,r2y);
    line(r2x,r2y,r3x,r3y);
    line(r3x,r3y,r4x,r4y);
    
    float s1x=r1x*(1-t) + r2x*t;
    float s1y=r1y*(1-t) + r2y*t;
    
    float s2x=r2x*(1-t) + r3x*t;
    float s2y=r2y*(1-t) + r3y*t;
    
    float s3x=r3x*(1-t) + r4x*t;
    float s3y=r3y*(1-t) + r4y*t;
    
    stroke(255,255,0);
    line(s1x,s1y,s2x,s2y);
    line(s2x,s2y,s3x,s3y);
    
    float t1x=s1x*(1-t) + s2x*t;
    float t1y=s1y*(1-t) + s2y*t;
    
    float t2x=s2x*(1-t) + s3x*t;
    float t2y=s2y*(1-t) + s3y*t;
    
    stroke(255,0,0);
    line(t1x,t1y,t2x,t2y);
    
    float rx=t1x*(1-t) + t2x*t;
    float ry=t1y*(1-t) + t2y*t;
    
    strokeWeight(5);
    stroke(172, 0, 21);
    for(float m=0; m<t; m+=0.001){
      /*
      //Cambiar t por m
      float pt0=0,pt1=0,pt2=0,pt3=0,pt4=0,pt5=0;
      pt0=px[0]*pow((1-t),5);
      pt1=5*px[1]*pow((1-t),4)*t;
      pt2=10*px[2]*pow((1-t),3)*pow(t,2);
      pt3=10*px[3]*pow((1-t),2)*pow(t,3);
      pt4=5*px[4]*(1-t)*pow(t,4);
      pt5=px[5]*pow(t,5);
      */
      float xm=px[0]*pow((1-m),5) + 5*px[1]*pow((1-m),4)*m + 10*px[2]*pow((1-m),3)*pow(m,2) + 10*px[3]*pow((1-m),2)*pow(m,3) + 5*px[4]*(1-m)*pow(m,4) + px[5]*pow(m,5);
      /*
      //Cambiar t por m
      pt0=py[0]*pow((1-t),5);
      pt1=5*py[1]*pow((1-t),4)*t;
      pt2=10*py[2]*pow((1-t),3)*pow(t,2);
      pt3=10*py[3]*pow((1-t),2)*pow(t,3);
      pt4=5*py[4]*(1-t)*pow(t,4);
      pt5=py[5]*pow(t,5);
      */
      float ym=py[0]*pow((1-m),5) + 5*py[1]*pow((1-m),4)*m + 10*py[2]*pow((1-m),3)*pow(m,2) + 10*py[3]*pow((1-m),2)*pow(m,3) + 5*py[4]*(1-m)*pow(m,4) + py[5]*pow(m,5);
      point(xm,ym);
      
    }
    
    strokeWeight(3);
    stroke(172, 0, 21);
    fill(172, 0, 21);
    circle(rx,ry,5);
    t+=0.005;
    
  }
  else if (t>1){
    t=0;
    background(255);
  }
  
  stroke(1);
  for (int i=0; i<6; i++){
    rect(px[i]-2.5,py[i]-2.5,5,5);
  }
}

void mouseDragged(){
  for(int i =0; i<6;i++){
    if (dist(mouseX,mouseY,px[i],py[i])<10){
      px[i]+=(mouseX-pmouseX);
      py[i]+=(mouseY-pmouseY);
    }
  }
}
