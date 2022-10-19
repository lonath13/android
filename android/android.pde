//Global Variables
int appWidth, appHeight;
//
void setup() {
  //Declare Geometry: square, lanscape, portrait
  size(400, 2000); //use size for debugging
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
  println (DO, orientation);
  //
  // If orentation is wrong ... feedback to change it
  if( orientation==p ) println(instruct);
  //
  //Fit CANVAS in Display Monitor
  if (appWidth > displayWidth) appWidth = 0; // CANVAS-width will no fit
  if ( appHeight > displayHeight ) appHeight = 0; // CANVAS-height will no fit
  if ( appWidth != 0 && appHeight != 0) print("Display Geometry is Good to Go.");
  if (appWidth == 0 || appHeight == 0) println("STOP, is broken");
} //End setup
//
void draw() {} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
// End Main Program
