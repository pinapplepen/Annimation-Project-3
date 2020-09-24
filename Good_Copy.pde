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
  
   //Background Hills
  fill(19, 209, 42);
  stroke(19, 209, 42);
  ellipse(0, 300, 150, 150);
  ellipse(100, 300, 150, 150);
  ellipse(200, 300, 150, 150);
  ellipse(300, 300, 150, 150);
  ellipse(400, 300, 150, 150);
  ellipse(500, 300, 150, 150);
  ellipse(600, 300, 150, 150);
  ellipse(700, 300, 150, 150);
  
  //Background Mountains
  fill(118, 118, 115);
  stroke(118, 118, 115);
  triangle(700, 300, 800, 300, 750, 200); 
  triangle(750, 300, 950, 300, 970, 100); 
  triangle(750, 300, 1000, 300, 790, 100); 
  triangle(900, 300, 1150, 300, 970, 75); 
  triangle(1000, 300, 1300, 300, 1150, 50); 
  //Horizon Line
  line(0, 300, 1200, 300);
  fill(194, 245, 32);
  rect(0, 300, 1200, 300);
  
 
  
  //Tree
  fill(110, 252, 64);
  stroke(147, 49, 49);
  strokeWeight(40);
  line(600, 600, 600, 300);
  //Tree Leaves
  strokeWeight(0);
  stroke(110, 252, 64);
  ellipse(650, 280, 100, 100);
  ellipse(600, 300, 100, 100);
  ellipse(550, 280, 100, 100);
  ellipse(650, 240, 100, 100);
  ellipse(550, 240, 100, 100);
  ellipse(600, 220, 100, 100);
  
  

  
  //Road
  strokeWeight(0);
  fill(100, 100, 100);
  rect(0, 600, 1300 ,300);
  
  //Shop
  fill(227, 224, 224);
  rect(100, 350, 250, 250);
  //Shop Roof
  fill(250, 85, 30);
  rect(100, 275, 250, 75);
  triangle(100, 275, 100, 350, 50, 260);
  
  
  
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
