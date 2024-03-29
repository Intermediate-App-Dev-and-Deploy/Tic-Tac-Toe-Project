//Global Variables for Text
PFont generalFont;
//
int titleX, titleY, titleWidth, titleHeight; //Layout rect()
String click = "Click the Screen";
String restart = "Restart";
String quit = "QUIT";
String easy = "Easy";
String medium = "Medium";
String hard = "Impossible";
String twoPlayer = "2 Player";
String random = "Random Screen Saver";
String randomAI = "Random AI Screen Saver";
String x = "X";
String o = "O";
String xWins = "0";
String oWins = "0";
String textInstruction = "Who's Turn Is It";
//
color purpleInk = #2C08FF; //Not nice for Night Mode, Blue Content
color whiteInk = #FFFFFF;
//
void textSetup()
{
  //println("Start of Console");
  //
  /*Fonts from OS
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  generalFont = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
}//End textSetup()
//
void preDrawText(float height, color ink, int alignHorizontal, int alignVertical, PFont font)
{
  fill(ink); //Ink, hexidecimal copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
}//End preDrawText
//
void textDraw(float height, color ink, int alignHorizontal, int alignVertical, PFont font, String string, float multiplier, float rectX, float rectY, float rectWidth, float rectHeight)
{
  preDrawText(height, ink, alignHorizontal, alignVertical, font);
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize( textCalculator(height, string, rectWidth, multiplier) );
  text(string, rectX, rectY, rectWidth, rectHeight);
  textReset();
}//End textDraw
//
void textReset()
{
  fill(whiteInk); //reset
}//End textReset()
//
float textCalculator(float size, String string, float rectWidth, float mutliplier)
{
  textSize(size); //For textWidth sizing
  while ( textWidth(string) > rectWidth)
  {
    size = size * 0.99; //size-- will do pixels
    textSize(size);
  }//End WHILE;
  size =  size * mutliplier; //different fonts and string sizes need extra shrinking
  println(size);
  return size; //Purpose of Calculator
}//End textCalculator
