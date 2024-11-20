//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float PatrickX, PatrickY, PatrickWidth, PatrickHeight;
PImage picBackground, picPatrick;
int picPatrickWidth, picPatrickHeight;
float PatrickX_Changed, PatrickY_Changed;
float picPatrickWidthChanged, picPatrickHeightChanged;
Boolean centeredVertical=true; //false
//
void setup() {
  size( 500, 700 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*2;
  backgroundImageY = appHeight*2;
  backgroundImageWidth = appWidth-4;
  backgroundImageHeight = appHeight-4;
  picBackground = loadImage("../../../../../Images/Patrick.jpg");
  PatrickX_Changed = PatrickX = appWidth * 3/6;
  PatrickY_Changed = PatrickY = appHeight * 3/6;
  PatrickWidth = appWidth * 2/4;
  PatrickHeight = appHeight * 2/4;
  picPatrick = loadImage("../../../../../Images/PitbullFight.jpeg");
  picPatrickWidthChanged = picPatrickWidth = 1920;
  picPatrickHeightChanged = picPatrickHeight = 1080;
  //
  //Image Compression
  float biggerSide = ( picPatrickWidth > picPatrickHeight ) ? picPatrickWidth : picPatrickHeight ;
  float smallerSide = ( picPatrickHeight < picPatrickWidth ) ? picPatrickHeight : picPatrickWidth ; 
  float ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmallSide", smallerSide, "\tRatio:", ratio );
    /* Algorithm
  - Establish Landscape or Portrait of DIV
  - Note: I always fill smaller side of DIV, then calculate larger side of DIV
  - Hardcode if ratio will be >1 or <1 ... influences * or /
  - In the image, decide if calculating the larger side or the smaller side
  */
  if ( PatrickWidth > PatrickHeigth ) {
    picPatrickHeightChanged = PatrickHeight;
    picPatrickWidthChanged = ( picPatrickWidth > picPatrickHeight ) ? picPatrickWidthChanged / ratio : picPatrickWidthChanged * ratio;
    println( "Inside If-true:", picPatrickWidthChanged );
    //Horizontal Image Formatting
  } else {//DIV Portrait
    picPatrickWidthChanged = PatrickWidth;
    picPatrickHeightChanged = (picPatrickWidth > picPatrickHeight ) ? picPatrickWidthChanged / ratio : picPatrickWidthChanged * ratio;
    println( "Inside If-false:", picPatrickHeightChanged );
    //Vertical Image formatting
    if ( centeredVertical--true ) {
      float extraSpace + PatrickHeight - picPatrickHeightChanged;
      println(extraSpace);
      PatrickY_changed = PatrickY + extraSpace*2/4;
    }
  }
  println( "Changed Width:", picPatrickWidthChanged, "\tChanged Height:", picPatrickHeightChanged );
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( PatrickX, PatrickY, PatrickWidth, PatrickHeight );
}
//
void draw() {
  //
