//Global Variables
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, purple=#8600FC, yellow=#F8FC00;
color yellowNightMode=#860000, purpleNightMode= ;
float thick, thin;
//
void setup() {
  //Declare Geometry: square, lanscape, portrait
  size(700, 400); //use size for debugging
  //fullScreen();c//use full screen for easy dyployment
  appWidth = width;
  appHeight = height;
  //
  //Concatenation
  println("\t\t\twidth=", width, "\theight=", height); //key variable
  println("Display Monitor:", "\twidth="+displayWidth, "& height"+displayHeight );
  //
  //Ternary Opperator
  String ls="Landscape or square", p="Portrait", DO="Display Orientation", instruct="come-on turn your phone.";
  String orientation = ( appWidth>= appHeight) ? ls : p;
  //println (DO, orientation);
   if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("STOP, is broken");
    }
  }
  //
  //Population
  centerWidth= width * 1/2;
  centerHeight = height *1/2;
  xStart =  centerWidth - (width *1/4);
  yStart = centerHeight - (height *1/4);
  widthRect = width * 1/2;
  heightRect = height * 1/2;
  thick = appWidth *1/70;
  thin = appWidth * 1/140;
  // If orentation is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  //Fit CANVAS in Display Monitor
} //End setup
//
void draw() {
  background(225); //Grey Scale 0-255
  //random(a, b)
  background(color( random(255), random(255), random(255)) ); //color(r,g,b), , casting
  //night mode
  background(black);
  //
  strokeWeight(thick); //noStroke()
  stroke(yellow); //yellowNightMode
  fill(purple); //purpleNightMode
  rect(xStart, yStart, widthRect, heightRect);
  fill(white); // reset default
  stroke(black);// reset default
  strokeWeight(1);// reset default
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
