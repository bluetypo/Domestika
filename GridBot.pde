/* The GridBot
by Manolo G
*/


import processing.pdf.*;
int RandV;
int RandH;
int lineV;
int lineH;
int grid = 120;//tamaño de la retícula


void setup() {
  size(600, 900);
  
     dibuja();
     
}


//función dibuja
void dibuja(){
  beginRecord(PDF, "gridbot/gridBot-####.pdf");
  background(#ffffff);
  rect(0, 0, width-1, height-1);
  noFill();
  pushMatrix();
  translate(-grid, -grid);
  for(int i = 0; i < 50; i++){  
RandV = (int) random(12)*grid;
RandH = (int) random(12)*grid;

lineV = (int) random(12)*grid;
lineH = (int) random(12)*grid;

    rect(RandV, RandH, RandV, RandH);
     noFill();
    //line(lineV*4, lineH, lineV, lineV*4);
    //stroke(126);
    println(RandV);
    
  }
     endRecord();
}

// función exporta
void exporta(){
//saveFrame("gidbot/gridBot-######.tif");

}

void mousePressed() {
  clear();
  dibuja();
  exporta();
}

      
void draw() {
 
}