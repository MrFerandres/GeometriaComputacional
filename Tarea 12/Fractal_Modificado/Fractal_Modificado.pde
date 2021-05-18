/*
  Codigo modificado de Daniel Shiffman
  encontrado en la pagina "https://processing.org/examples/tree.html"
*/

float theta;   

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  // Let's pick an angle 0 to 90 degrees based on the mouse position
  float a = (mouseX / (float) width) * 110f + 10;    //Se añadio 30 unidades para que no pueda quedarse la figura como una linea
  // Convert it to radians
  theta = radians(a);
  // Start the tree from the bottom of the screen
  translate(width/2,height);
  // Draw a line 120 pixels
  line(0,0,0,-120);
  // Move to the end of that line
  translate(0,-120);
  // Start the recursive branching!
  branch(200);

}

void branch(float h) {
  // Each branch will be 2/3rds the size of the previous one
  h *= 0.5; //disminuimos el tamaño a 1/5 en lugar de 2/3
  
  // All recursive functions must have an exit condition!!!!
  // Here, ours is when the length of the branch is 2 pixels or less
  if (h > 5) {  //Como ahora tiene mas ramas, aumentamos el parametro para dejar de graficarla, ya que se llena de figuras y tarda en calcularlas
    pushMatrix();    // Save the current state of transformation (i.e. where are we now)
    stroke(255,255/theta,255/theta);
    rotate(theta);   // Rotate by theta
    line(0, 0, 0, -h);  // Draw the branch
    translate(0, -h); // Move to the end of the branch
    branch(h);       // Ok, now call myself to draw two new branches!!
    popMatrix();     // Whenever we get back here, we "pop" in order to restore the previous matrix state
    
    // Repeat the same thing, only branch off to the "left" this time!
    pushMatrix();
    stroke(255/theta,255/theta,255);
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
    
    // Repetimos en el centro
    pushMatrix();
    stroke(255/theta,255,255/theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
    
    // Repetimos entre el centro y el valor negativo de theta
    pushMatrix();
    stroke(255/theta,255,255);
    rotate(-theta/2);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
    
    // Repetemios entre el centro y el valor positivo de theta
    pushMatrix();
    stroke(255,255,255/theta);
    rotate(theta/2);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
    
  }
}
