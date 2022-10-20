//Global Variables
int appWidth, appHeight;
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
  // If orentation is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  //Fit CANVAS in Display Monitor
} //End setup
//
void draw() {
  ellipse(150, 20, 10, 30);
  arc(200, 200, 50, 50, 0, PI);
  circle(50, 300, 80);
  line(120, 80, 340, 300);
  quad(30, 30, 100, 50, 60, 70, 80, 40);
  triangle(300, 120, 232, 80, 344, 300);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
