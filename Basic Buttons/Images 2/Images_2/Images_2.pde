//Global variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float funnyPatrickX, funnyPatrickY, funnyPatrickWidth, funnyPatrickHeight;
PImage picBackground, picfunnyPatrick;
int picfunnyPatrickWidth, picfunnyPatrickHeight;
float funnyPatrickX_Changed, funnyPatrickY_Changed;
float picfunnyPatrickWidthChanged, picfunnyPatrickHeightChanged;
Boolean centeredVertical=true; //false
//
void setup() {
  size( 800, 900 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //population
  backgroundImageX = appWidth * 1;
  backgroundImageY = appHeight * 1;
  backgroundImageWidth = appWidth-2;
  backgroundImageHeight = appHeight-2;
  picBackground = loadImage("../../../../Images/funnyPatrick.jpg");
  funnyPatrickX_Changed = funnyPatrickX = appWidth * 1/2;
  funnyPatrickY_Changed = funnyPatrickY = appHeight * 1/2;
  funnyPatrickWidth = appWidth * 1/4;
  funnyPatrickHeight = appHeight * 1/4;
  picfunnyPatrick = loadImage("../../../../Images/PitbullFight.jpeg");
  picfunnyPatrickWidthChanged = picfunnyPatrickWidth = 862;
  picfunnyPatrickHeightChanged = picfunnyPatrickHeight = 642;
  //
  //Image Compression
  float biggerSide = ( picfunnyPatrickWidth > picfunnyPatrickHeight ) ? picfunnyPatrickWidth : picfunnyPatrickHeight ;
  float smallerSide = ( picfunnyPatrickHeight < picfunnyPatrickWidth ) ? picfunnyPatrickHeight : picfunnyPatrickWidth;
  float ratio = biggerSide / smallerSide; // Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmall Side:", smallerSide, "\tRatio:", ratio );
  /* Algorithm
  - Establish Landscape or Portrait of DIV
  - Note: I always fill smaller side of DIV, then calculate larger side of DIV
  - Hardcode if ratio will be >1 or <1 ... influences * or /
  - In the image, decide if calculating the larger side or the smaller side
  */
  if ( funnyPatrickWidth > funnyPatrickHeight ) {//DIV LandScape, find larger side
    picfunnyPatrickHeightChanged = funnyPatrickHeight;
    picfunnyPatrickWidthChanged = ( picfunnyPatrickWidth > picfunnyPatrickHeight ) ? picfunnyPatrickWidthChaned / ratio : picfunnyPatrickWidthChanged * ratio;
    println( "Inside If-true:", picfunnyPatrickWidthChanged );
  } else {
    picfunnyPatrickWidthChanged = funnyPatrickWidth;
    picfunnyPatrickHeightChanged = ( picfunnyPatrickWidth > picfunnyPatrickHeight ) ? picfunnyPatrickWidthChanged / ratio : picfunnyPatrickWidthChanged * ratio;
    println( "Inside If-false:", picfunnyPatrickHeightChanged );
  }
  //
void draw() {
  //Draw Image One Time, for testing
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picBike, bikeX_Changed, bikeY_Changed, picBikeWidthChanged, picBikeHeightChanged );
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//End MAIN
