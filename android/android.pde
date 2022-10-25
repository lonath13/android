//Global Variables
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect;
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
  // If orentation is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  //Fit CANVAS in Display Monitor
} //End setup
//
void draw() {
  rect(xStart, yStart, widthRect, heightRect);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
