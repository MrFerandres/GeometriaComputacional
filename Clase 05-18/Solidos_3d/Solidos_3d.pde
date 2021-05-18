Tetraedro t;

void setup(){
  size(500,500,P3D);
  t = new Tetraedro(200);
  noStroke();
}

void draw(){
  background(0);
  lights();
  translate(width/2, height/2,0);
  rotateX(frameCount*PI/275);
  rotateZ(frameCount*PI/175);
  t.display();
}
