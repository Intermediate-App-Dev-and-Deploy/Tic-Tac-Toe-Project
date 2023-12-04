/* To Do List
 - Display Algorithm to give feedback for Geometry
 - DIVs: symetrical, based on referent measures for height and width (very similar)
 - Note: DIVs Variables create the buttons and spaces for images & text
 */
//
//Global Variables
Boolean OS_On=false;
//
void setup() {
  //Display, based on Google Tic Tac Toe
  size(800, 500);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  smallDimension = ( appWidth<appHeight ) ? appWidth : appHeight;
  displayAlgorithm();
  population();
  //divisions();
  textSetup();
  //
  startUpScreen();
  //
} //End setup
//
void draw() {
  if ( OS_On == true ) splashScreen();
} //End draw
//
void keyPressed() {
  //
  //2-Player Game Mode
  if ( key=='' || key=='' ) 
} //End keyPressed
//
void mousePressed() {
  if ( OS_On == false ) OS_On = true;
} //End mousePressed
//
//End MAIN Program
