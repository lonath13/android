//Global Variables
int appWidth, appHeight;
//
//Declare Geometry: square, lanscape, portrait
size(2300, 600);
appWidth = width;
appHeight = height;
println("\t\t\twidth=", width,"\theight=", height); //key variable
println("Display Monitor:", "\twidth="+displayWidth, "& height"+displayHeight );
//
//Fit CANVAS in Display Monitor
if (width > displayWidth) appWidth = 0; // CANVAS-width will no fit
if ( height > displayHeight ) appHeight = 0; // CANVAS-height will no fit
if( appWidth != 0 && appHeight != 0) print("Display Geometry is Good to Go.");
if(appWidth == 0 || appHeight == 0) println("STOP, is broken");
String ls="Landscape or square", p="Portrait", DO="Display Orientation", instruct="come-on turn your phone.";
