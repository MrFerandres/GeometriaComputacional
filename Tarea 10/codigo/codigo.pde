/*
  Hacer una funcion que generen 3 flores
  La funcion tiene que usar la funcion llamada "myFlower"
*/

void setup(){
  size(800,600);
  noLoop();
}

void draw(){
  background(255);
  int[] colorCentro = new int[3];
  int[] colorPetalo = new int[3];
  colorCentro[0]=0;    //R
  colorCentro[1]=0;    //G
  colorCentro[2]=0;    //B
  
  colorPetalo[0]=255;    //R
  colorPetalo[1]=0;      //G
  colorPetalo[2]=255;    //B
  
  myPlant(200,500,colorCentro,colorPetalo);
  
}

void myFlower(float x, float y,float d,int[] colorCentro, int[] colorPetalo){
  
  noStroke();
  fill(colorCentro[0],colorCentro[1],colorCentro[2]);
  circle(x,y,d);
  fill(colorPetalo[0],colorPetalo[1],colorPetalo[2]);
  circle(x,y-d/2,d/2);
  circle(x-d/2,y,d/2);
  circle(x,y+d/2,d/2);
  circle(x+d/2,y,d/2);
  
}

void myPlant(float x,float y,int[] colorCentro, int[] colorPetalo){
  strokeWeight(4);
  stroke(0,255,0);
  line(x,y,x-100,y-150);
  line(x,y,x,y-200);
  line(x,y,x+100,y-150);
  
  myFlower(x-100,y-150,75,colorCentro,colorPetalo);
  myFlower(x,y-200,75,colorCentro,colorPetalo);  
  myFlower(x+100,y-150,75,colorCentro,colorPetalo);
}
