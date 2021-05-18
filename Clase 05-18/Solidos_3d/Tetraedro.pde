class Tetraedro{
  
  PVector[] verts = {
    new PVector(0,0,1),
    new PVector(0.943, 0, -0.333),
    new PVector(-0.471, -0.816,-.333),
    new PVector(-0.471, 0.816, -.333)
  };
  float r;
  
  Tupla[] inds = {
    new Tupla (0,1,2),
    new Tupla (0,2,3),
    new Tupla (0,3,1),
    new Tupla (1,2,3)
  };
  
  Face[] faces = new Face[4];
  
  Tetraedro(float radio){
    this.r=radio;
    for (int i=0;i<4;i++){
      faces[i] = new Face(verts[inds[i].n0], verts[inds[i].n1],verts[inds[i].n2]);
    }
  }
  
  
  void display(){
    pushMatrix();
      scale(r);
      for(int i =0; i<4; i++){
        faces[i].display();
      }
    popMatrix();
  }
  
}
