//Fernando Andrés Chávez Gavaldón

void setup(){
  size(640,480);
  background(85,160,93);
}
void draw(){
  
  
  noStroke();
  
  fill(120,200,74);//suelo
  rect(0,300,700,700);
  fill(130,70,33);//cuerpo
  circle(80,440,50);
  circle(190,440,60);



  
  fill(205,155,184);//FLores
  circle(170,100,180);
  fill(224, 81, 132,100);
  circle(170,80,30);
  circle(130,130,30);
  circle(160,20,30);
  circle(190,30,30);
  circle(210,40,30);
  circle(230,50,30);
  circle(90,100,30);
  circle(110,90,30);
  circle(130,110,30);
  circle(150,130,30);
  circle(160,150,30);
  circle(110,80,30);
  circle(130,60,30);
  circle(150,50,30);
  circle(170,30,30);
  circle(190,40,30);
  circle(190,90,30);
  circle(210,80,30);
  circle(230,90,30);
  circle(250,70,30);
  circle(190,100,30);
  circle(210,120,30);
  circle(230,130,30);
  circle(250,150,30);
  circle(100,120,30);
  circle(120,140,30);
  circle(140,150,30);
  

  
  fill(182,164,179);//cuerpo mujer
  circle(450,150,200);
  
  fill(185,19,19);//falda roja
  quad(540,200,330,200,330,420,580,400);
  
    fill(130,70,33);//cuerpo
  quad(530,410,530,430,590,455,570,425);
  fill(241,235,201);
  ellipse(280,290,300,170); //CUerpo grande
  rect(450,400,80,40);
  quad(340,340,450,440,510,440,400,330);
    
  fill(130,70,33);//cuerpo
  circle(500,100,80);
  ellipse(480,200,120,50);
  fill(0,0,0);//pelo
  circle(510,90,70);
  
  fill(241,235,201);//ropa
  quad(150,310,170,340,90,450,70,420);
  quad(350,350,420,380,320,460,320,420);
  quad(320,460,320,420,500,420,500,460);
  
  
  fill(238,208,152);//canasta
  quad(150,200,380,230,380,80,250,60);//
  fill(195,165,59);
  quad(130,300,400,150,400,220,140,330);
  circle(140,330,30);
  quad(400,220,400,150,440,180,440,215);
  fill(130,70,33); //cuerpo
  ellipse(130,250,70,90);
  fill(238, 163, 5);
  ellipse(110,240,72,110);
  fill(139,139,139);
  ellipse(100,240,72,82);
  fill(247, 190, 27);
  ellipse(100,240,70,80);
  fill(241,235,201);//ropa
  stroke(81, 81, 81 );
  rect(170,320,40,120);
  noStroke();
  rect(170,320,40,5);
 
  save("dibujo.jpg");


}
