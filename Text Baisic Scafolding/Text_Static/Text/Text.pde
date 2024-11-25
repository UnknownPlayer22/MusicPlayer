/* Static Text
 - Testing for Aspect Ratio
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 */
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color ink, purple=#2C08FF, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Friendly
int size;
String title = "green", footer="white", phrase="yellow";
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
titleFont = createFont("Harrington", 55); //Verify the font exists in Processing.Java
footerFont = createFont("Algerian", 55);
phraseFont = createFont("Magneto Bold", 55);
//
/* Population
- using 10's
- Could be 100s or percent
- Able to use decimals to dial in the values
*/
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
superCoolPhraseX = titleX; //Best Practice: change on formula
superCoolPhraseY = appHeight*4.5/10; //Ratio done last. How is this Centered Vertically?
superCoolPhraseWidth = titleWidth; //Best Practice
superCoolPhraseHeight = titleHeight; //Best Practice
footerX = titleX; //Best Practice
footerY = appHeight*8/10;
footerWidth = titleWidth; //Best Practice
footerHeight = titleHeight; //Best Practice
//DIVs
rect( titleX, titleY, titleWidth, titleHeight ); //Title Font
rect( superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight ); // Testing Aspect Ratio of Fonts
rect( footerX, footerY, footerWidth, footerHeight ); //Different Font
}
//
void draw()
{
//Drawing Text
fill(purple); //Ink, hexidecimal copied from Color Selector
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
ink = purple;
fill(ink);
size = 40; //Change the number until it fits
textFont( titleFont, size ); 
text( title, titleX, titleY, titleWidth, titleHeight );
ink = purple;
fill(ink);
textFont( footerFont, size ); 
text( footer, footerX, footerY, footerWidth, footerHeight );
ink = color( 93, 143, 144);
fill(ink);
size = 83;
textFont( phraseFont, size ); 
text( phrase, superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight );
} //End Draw
//
void mousePressed() {} //End mousepressed
//
void keyPressed() {} //End KeyPressed
//
