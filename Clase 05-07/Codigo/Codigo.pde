//Lineas de Bezier
float[] px = {40,400,60};
float[] py = {40,50,400};

void setup(){
  size(500,500);
}

void draw(){
  background(255);
  for(float t=0; t<=1; t+=0.001){
    float x=px[0]*pow((1-t),2) + 2*px[1]*(1-t)*t + px[2]*pow(t,2); 
    float y=py[0]*pow((1-t),2) + 2*py[1]*(1-t)*t + py[2]*pow(t,2);
    point(x,y);
  }
  
  for (int i=0; i<3; i++){
    rect(px[i]-2.5,py[i]-2.5,5,5);
  }
}

void mouseDragged(){
  for(int i =0; i<3;i++){
    if (dist(mouseX,mouseY,px[i],py[i])<10){
      px[i]+=(mouseX-pmouseX);
      py[i]+=(mouseY-pmouseY);
    }
  }
  
}
