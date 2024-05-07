/* The GridBot 3
by Manolo G
*/

color[] colores  = {#ED6D6A, #E94545, #CF2A30, #B6181F, #A01814, #7E170F};

import processing.pdf.*;

int RandV;
int RandH;
int rectWidth;
int rectHeight;
int grid =180; // tamaño de la retícula

void setup() {
  size(600, 900);

  dibuja();
}



void draw() {
}


// función dibuja
void dibuja() {
  beginRecord(PDF, "gridbot/gridBot-####.pdf");
  background(#ffffff);
  rect(0, 0, width - 1, height - 1);
  pushMatrix();
  translate(-grid, -grid);
  for (int i = 0; i < 50; i++) {
    RandV = (int) random(12) * grid;
    RandH = (int) random(12) * grid;
    
    // Asegurar que los rectángulos estén dentro del tamaño del sketch
    rectWidth = constrain((int) random(12) * grid, 0, width - RandV);
    rectHeight = constrain((int) random(12) * grid, 0, height - RandH);
    noStroke();
    fill(colores[(int)random(colores.length)]);
    rect(RandV, RandH, rectWidth, rectHeight);
    
    println(RandV);
  }
  endRecord();
}

// función exporta
void exporta() {
  // saveFrame("gridbot/gridBot-######.tif");
}

void mousePressed() {
  clear();
  dibuja();
}

void keyPressed() {
  exporta();
}
