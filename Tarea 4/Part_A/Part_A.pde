//Fernando Andrés Chávez Gavaldón

void setup(){
  size(640,480);
}
void draw(){
  /*Centroide del dibujo
    Por si ocupo mover
    el dibujo
    que si lo ocupe*/
  int x = 200;
  int y = 370;

//sombra
  quad(80,220,200,220,65,130,15,110);

//---------CASA----------
  square(80,100,120);
  triangle(80,100,200,100,140,30);
  circle(140,70,40);
  rect(120,165,30,55);
  square(100,120,30);
  square(160,120,30);


//-----------Animal extraño-------------

//Sombra
  ellipse(x-50,y+100,380,200);

  //----Patas----
  ellipse(x+125,y+80,60,120);
  ellipse(x-125,y+80,60,120);
  
  //Cuerpo
  ellipse(x,y,330,240);

  //Cabeza
  circle(x+152,y-100,100);
  
  //Ojos
  ellipse(x+200,y-130,40,60);
  ellipse(x+200,y-130,20,30);
  ellipse(x+140,y-130,40,60);
  ellipse(x+140,y-130,20,30);
  triangle(x+195,y-120,x+205,y-120,x+200,y-130);
  triangle(x+135,y-120,x+145,y-120,x+140,y-130);
  
  //boca
  square(x+155,y-90,20);
  
  //Globo
  circle(x+200,y-180,10);
  circle(x+215,y-195,15);
  circle(x+235,y-215,20);
  ellipse(x+315,y-290,120,180);  
  
  
  //Manchas
  ellipse(x,y,24,40);
  ellipse(x+30,y+30,30,15);
  ellipse(x-50,y+80,42,10);
  ellipse(x-40,y+22,10,20);
  ellipse(x-40,y-60,20,48);
  ellipse(x+90,y-70,40,30);
  ellipse(x-100,y,52,30);
  ellipse(x+120,y-30,24,10);
  ellipse(x+50,y-20,25,50);
  ellipse(x+80,y+20,44,40);
  
  
  
  //texto
  //  ----H----
  line(x+280,y-350,x+280,y-320);
  line(x+280,y-335,x+290,y-335);
  line(x+290,y-350,x+290,y-320);
  // ----o----
  circle(x+305,y-330,20);
  // ----l----
  line(x+320,y-350,x+320,y-320);
  line(x+320,y-320,x+325,y-320);
  // ----A----
  line(x+335,y-320,x+345,y-350);
  line(x+345,y-350,x+355,y-320);
  line(x+340,y-335,x+350,y-335);
  // ----T----
  line(x+280,y-300,x+305,y-300);
  line(x+292.5,y-300,x+292.5,y-270);
  // ----u----
  arc(x+320,y-300,20,60,0.4,PI-0.4,OPEN);

  
  
}
