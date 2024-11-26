/* Dynamic Text
 - Testing for Aspect Ratio
 - change the text in middle rect()
 */
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color ink, purple=#2C08FF, white=#FFFFFF, resetDefaultInk=white, red=#E52727, cyan=#E52727, green=#27E57E; //Not Night Mode Friendly
int size;
String title = "How do I write text?", footer="This is at the bottom.", phrase="ORA-Wahoo";
Boolean randomColour=false, colorChange=false;
//
void setup()
{
  //Display
  size( 500, 700 ); //Portrait CANVAS
  appWidth = width;
  appHeight = height;
  //
  //Text: Single Executed Code
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  titleFont = createFont("Harrington", 60); //Verify the font exists in Processing.Java
  footerFont = createFont("Algerian", 60);
  phraseFont = createFont("Playbill", 60);
  //
  /* Population
   - using 10's
   - Could be 100s or percent
   - Able to use decimals to dial in the values
   */
  titleX = appWidth*1/12;
  titleY = appHeight*3/12;
  titleWidth = appWidth*8/10;
  titleHeight = appHeight*1/10;
  superCoolPhraseX = titleX; //Best Practice: change on formula
  superCoolPhraseY = appHeight*4.7/10; //Ratio done last. How is this Centered Vertically?
  superCoolPhraseWidth = titleWidth; //Best Practice
  superCoolPhraseHeight = titleHeight; //Best Practice
  footerX = titleX; //Best Practice
  footerY = appHeight*7.5/10;
  footerWidth = titleWidth; //Best Practice
  footerHeight = titleHeight; //Best Practice
  //DIVs
  rect( titleX, titleY, titleWidth, titleHeight ); //Title Font
  rect( superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight ); // Testing Aspect Ratio of Fonts
  rect( footerX, footerY, footerWidth, footerHeight ); //Different Font
} //End setup
//
void draw()
{
  //Drawing Text
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  ink = purple;
  fill(ink);
  size = 73; //Change the number until it fits
  textFont( titleFont, size );
  text( title, titleX, titleY, titleWidth, titleHeight );
  ink = purple;
  fill(ink);
  size = 86; //Change the number until it fits
  textFont( footerFont, size );
  text( footer, footerX, footerY, footerWidth, footerHeight );
  //
  ink = ( randomColour == true ) ? color( random(0, 256), random(256), random(256) ) : purple ; //Ternary Operator
  ink = ( colorChange == true ) ? color( red=#E52727 ) : purple ;
  //
  fill(ink);
  size = 71; //Change the number until it fits
  textFont( phraseFont, size );
  text( phrase, superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight );
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  //RBG Button. try to make a button for different color change
  if ( key == 'R' || key == 'r' ) {
    if ( colorChange == true ) {
      colorChange =false;
    } else {
      colorChange = true;
    }
  }
  if ( key == 'B' || key == 'b' ) {
    if ( randomColour == false ) {
      randomColour = false;
    } else {
      randomColour = true;
    }
  }
} //End keyPressed
//
//End MAIN
