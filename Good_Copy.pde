//Annimation Project 3
//William Cheng
//Block 1-2B

//Variables // ================================================



void setup() { //==============================================
  size (1200, 800);
 
 
} // End Setup ================================================



void draw () { // =============================================
   
  //Sky
  background(3, 173, 255);
  
  //Apple base
  stroke(255, 75, 75);
  fill(255, 75, 75);
  ellipse(150, 150, 50, 65);
  ellipse(170, 150, 50, 65);
  
  //Apple Stem
  stroke(188, 85, 85);
  strokeWeight(8);
  line(160, 115, 170, 100);
  
  //Apple Leaf
  fill(110, 252, 64);
  strokeWeight(0);
  ellipse(160, 115, 12, 35);
  
  
 
} // End Draw =================================================
