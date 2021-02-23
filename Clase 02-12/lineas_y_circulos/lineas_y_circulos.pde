// Primera parte de la clase

/*void setup(){
 size(800,600);
 background(255,255,255); 
 noStroke();

  for(int i=0;i<200;i++){
    fill(random(100,200),random(100,256),random(100,256),random(120));
    circle(random(100,700),random(100,500),random(20,100));
    
  }
}*/

//Patron 2

/*void setup(){
 size(800,600);
 background(255,255,255);
 stroke(0,0,255);
 strokeWeight(5);
 line(100,100,700,500);
 int j = 5; //numero de particiones
 
 noStroke();
 fill(255,0,0,120);
 circle(100,100,50);
 circle(700,500,50);
 
 for(int i=1;i<j;i++){
   float x = ((700-100)/j)*i+100;
   float y = ((500-100)/j)*i+100;
   
   circle(x,y,50);
   
 }
} */


void setup(){
 size(800,600);
 background(255,255,255);
 for (int m=0;m<15;m++){
   float x1=random(100,700) ,y1 = random(100,500), x2=random(100,700),y2=random(100,500);
   stroke(0,0,255);
   strokeWeight(2);
   line(x1,y1,x2,y2);
   float j = random(2,5); //numero de particiones
   
   noStroke();
   fill(255,0,0,120);
   circle(x1,y1,random(2,30));
   circle(x2,y2,random(2,30));
   
   for(int i=1;i<j;i++){
     float x = ((x2-x1)/j)*i+x1;
     float y = ((y2-y1)/j)*i+y1;
     
     circle(x,y,random(2,30));
     
   }
 } 
  
  
  
  
  
}
