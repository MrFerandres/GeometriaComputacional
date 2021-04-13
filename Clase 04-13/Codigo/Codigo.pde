//Mi version de universo sin clases
/*
void setup(){
  size(500,500);
  noStroke();
};

void draw(){
  background(0);
  float h=110,h2=40;
  float theta=millis()/25.0,alpha=millis()/18;
  pushMatrix();
    translate(width/2, height/2);
    
    //stroke(255,0,0);
    //line(-width/2,0,width/2,0);
    //stroke(0,255,0);
    //line(0,height/2,0,-height/2);
    
    fill(255,255,0);
    circle(0,0,100);
    pushMatrix();
      translate(h*sin(radians(theta)),h*cos(radians(theta)));
      
      //stroke(255,0,0);
      //line(-width/2,0,width/2,0);
      //stroke(0,255,0);
      //line(0,height/2,0,-height/2);
    
      fill(0,255,0);
      circle(0,0,40);
      pushMatrix();
        translate(h2*sin(radians(alpha)),h2*cos(radians(alpha)));
        
        //stroke(255,0,0);
        //line(-width/2,0,width/2,0);
        //stroke(0,255,0);
        //line(0,height/2,0,-height/2);
      
        fill(255);
        circle(0,0,20);
      popMatrix();
    popMatrix();
  popMatrix();
}
*/


//---------------------------
//Version de la clase

SistemaSolar sol;

void setup(){
  size(500,500);
  sol = new SistemaSolar(150);
  noStroke();
}

void draw(){
  background(0);
  translate(width/2,height/2);
  
  sol.Dibujar();
  
}
