//Annimation Project 3
//William Cheng
//Block 1-2B

//Variables // ================================================
int appleX;


void setup() { //==============================================
  size (1200, 800);
  appleX = 0;
} // End Setup ================================================




void draw () { // Start Draw =============================================

  //Sky
  background(3, 173, 255);
  apple(appleX, 400);
  appleX = appleX + 1;
  if (appleX > 1300) {
    appleX = -100;
  }
} // End Draw =================================================


//         Parameters
void apple(int x, int y) { // Start Apple =====================================================
  pushMatrix();
 
  translate(x, y); 

  //Apple base
  stroke(255, 75, 75);
  fill(255, 75, 75);
  ellipse(0, 0, 50, 65);
  ellipse(20, 0, 50, 65);

  //Apple Stem
  stroke(188, 85, 85);
  strokeWeight(8);
  line(10, -35, 20, -50);

  //Apple Leaf
  rotate(radians(305));
  fill(110, 252, 64);
  strokeWeight(0);
  ellipse(30, -24, 12, 35);
 

  popMatrix();
} // End Apple =============================================================
