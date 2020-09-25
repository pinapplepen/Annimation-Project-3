//Annimation Project 3
//William Cheng
//Block 1-2B

//Sound
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Variables // ================================================

//Apple
int appleX;
int appleY;
int appleAngle;

//Truck
int truckX;
int truckY;

//Shop
int counter;

//Clouds
int alpha = 1;
int delta = 1;

//Fonts
PFont chicken;
PFont freshman;

//Sound
Minim minim; 
AudioPlayer song; 

void setup() { //==============================================
  size (1200, 800, P2D);

  //Apple
  appleX = 550;
  appleY = 270;

  //Store
  counter = 0;
  freshman = createFont("Freshman.ttf", 150);
  
  
  //Truck
  truckX = 0;
  truckY = 525;
  chicken = createFont("Chicken Quiche.ttf", 100);
  
  //Sound
  minim = new Minim(this);
  song = minim.loadFile("Song.mp3");
  song.play();

  smooth();
  
} // End Setup ================================================




void draw () { // Start Draw =============================================


  //Sky
  background(3, 173, 255);



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

  //Apple
  apple(appleX, appleY, appleAngle);
  appleX = appleX + 1;
  if (appleX > 1300) {
    appleX = 550;
    appleY = 240;
  }

  apple(appleX, appleY, appleAngle);
  appleY = appleY + 1;
  if (appleY > 572) {
    appleY = appleY - 1;
  }

  //Rotate Apple
  appleAngle = appleAngle + 1;


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

  //Lake
  fill(45, 176, 234);
  ellipse(1000, 400, 200, 100);
  
  //Lake House 1
  fill(240, 171, 60);
  rect(825, 350, 50, 50);
  fill(250 ,85, 30);
  triangle(825, 350, 875, 350, 850, 325);
  
  //Lake House 2
  fill(240, 171, 60);
  rect(900, 320, 35, 35);
  fill(250 ,85, 30);
  triangle(900, 320, 935, 320, 917, 300);


  //Road
  strokeWeight(0);
  fill(100, 100, 100);
  rect(0, 600, 1300, 300);

  //Shop
  fill(227, 224, 224);
  rect(100, 350, 250, 250);
  
  //Shop Roof
  stroke(250, 85, 30);
  fill(250, 85, 30);
  rect(100, 275, 250, 75);
  triangle(100, 275, 100, 350, 50, 350);
  triangle(350, 275, 350, 350, 400, 350);

  //Shop Sign
  counter = counter + 1;
  textFont(freshman);
  //Red
  if (counter < 100) {
    fill(255, 3, 7);
    textSize(50);
    text("SHOP", 155, 400);
  }

  //Orange
  if (counter > 100) {
    fill(255, 188, 3);
    textSize(50);
    text("SHOP", 155, 400);
  }

  //Yellow
  if (counter > 200) {
    fill(255, 235, 3);
    textSize(50);
    text("SHOP", 155, 400);
  }

  //Green
  if (counter > 300) {
    fill( 5, 255, 65);
    textSize(50);
    text("SHOP", 155, 400);
  }

  //Blue
  if (counter > 400) {
    fill(5, 220, 255);
    textSize(50);
    text("SHOP", 155, 400);
  }

  //Indigo
  if (counter > 500) {
    fill(75, 18, 250);
    textSize(50);
    text("SHOP", 155, 400);
  }

  //Violet
  if (counter > 600) {
    fill(141, 18, 250);
    textSize(50);
    text("SHOP", 155, 400);
  }


  if (counter == 700) {
    counter = 0;
  }

  //Shop Doors
  fill(88, 240, 255);
  rect(155, 475, 140, 125);
  fill(299, 211, 39);
  ellipse(200, 520, 15, 15);
  ellipse(250, 520, 15, 15);



  //Clouds
  if (alpha == 0 || alpha == 255) { 
    delta = -delta;
  }
  alpha += delta;
  fill(255, 255, 255, alpha);
  ellipse(width/1, height/40, 200, 100);

  if (alpha == 0 || alpha == 255) { 
    delta = -delta;
  }
  alpha += delta;
  fill(255, 255, 255, alpha);
  ellipse(width/1.23, height/40, 200, 100);

  if (alpha == 0 || alpha == 255) { 
    delta = -delta;
  }
  alpha += delta;
  fill(255, 255, 255, alpha);
  ellipse(width/1.60, height/40, 200, 100);
 
  //Truck
  truck(truckX, truckY);
  truckX = truckX + 3;
  if (truckX > 1300) {
    truckX = -400;
    
  }
  
} // End Draw =================================================


//         Parameters
void apple(int x, int y, int angle) { // Start Apple =====================================================
  pushMatrix();

  translate(x, y); 
  rotate(radians(angle));

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


//         Parameters
void truck(int x, int y) { // Start Truck =====================================================
  pushMatrix();

  translate(x, y); 
  //Truck body
  fill(252, 252, 252);
  rect(0, 0, 275, 175);
  rect(275, 50, 100, 125);

  //Truck Window
  fill(157, 255, 254);
  rect(300, 65, 60, 50);

  //Truck Wheels
  fill(1);
  ellipse(50, 175, 75, 75);
  ellipse(300, 175, 75, 75);

  //Fresh Apples text
  textSize(10);
  textFont(chicken);
  text("Apples", 10, 120);

  popMatrix();
} // End Truck =============================================================
