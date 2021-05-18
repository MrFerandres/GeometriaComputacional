class Face{
  PVector [] vert = new PVector[3];
  
  
  Face(PVector v0, PVector v1, PVector v2){
    vert[0]=v0;
    vert[1]=v1;
    vert[2]=v2;
  }
  
  void display(){
    beginShape();
      for (int i=0; i<3;i++){
        vertex(vert[i].x,vert[i].y,vert[i].z);
      }
    endShape();
  }
  
}
