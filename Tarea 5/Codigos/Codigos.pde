//Fernando Andrés Chávez Gavaldón
void setup(){
  size(500,500);
  background(255,255,255);
  stroke(0,0,0);
  
  
//--------------- APUNTES --------------
//              Se pueden ignorar

/*  for(int i=1; i<10;i++){
    int valor=255*i/9;
    fill(valor);
    circle(50*i,100,random(50));  
  }*/
  
/*  for(int i=0;i<500;i++){
    stroke(i*255/500,0,0);
    line(i,0,i,499);  
  }*/
  
  /*colorMode(HSB,500,100,100);
  for(int i=0;i<500;i++){
    stroke(i,100,100);
    line(i,0,i,499);  
  }*/
  
  
  
  
//-------- LINEAS -------
  /*for(int i=0;i<500;i++){
    line(0,random(500),500,random(500));
  }*/
  
  
  
//-------- LINEAS COLOR -------
/* for(int i=0;i<500;i++){
    stroke(random(256),random(256),random(256));
    line(0,random(500),500,random(500));
  }*/
  
  
  
  
//-------- CUADRADOS -------  
  /*for(int i=500;i>0;i-=5){
    //fill(random(256),random(256),random(256));
    //noStroke();
    square(0,0,i);
  }*/
  
//-------- CUADRADOS COLOR -------  
/*  for(int i=500;i>0;i-=5){
    fill(random(256),random(256),random(256));
    noStroke();
    square(0,0,i);
  }*/  
  
  
  
//-------- ARCOIRIS HSB -------
  /*colorMode(HSB,500,100,100);
  for(int i=500;i>0;i-=1){
    stroke(i,100,100);
    square(0,0,i);
  }*/
  
}
