int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float PitbullFightX, PitbullFightY, PitbullFightWidth, PitbullFightHeight;
PImage picBackground, picPitbullFight;
int picPitbullFightWidth, picPitbullFightHeight;
float PitbullFightX_Changed, PitbullFightY_Changed;
float picPitbullFightWidthChanged, picPitbullFightHeightChanged, biggerSide, smallerSide, ratio;
//
void setup() {
  size( 900, 800 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../../Images/funnyPatrick.jpg");
  PitbullFightX = appWidth * 1/4;
  PitbullFightY = appHeight * 1/4;
  PitbullFightWidth = appWidth * 1/2;
  PitbullFightHeight = appHeight * 1/2;
  picPitbullFight = loadImage("../../../../Images/PitbullFight.jpeg");
  picPitbullFightWidthChanged = picPitbullFightWidth = 612;
  picPitbullFightHeightChanged = picPitbullFightHeight = 463;
  //
  //Image Compresseion
   biggerSide = ( picPitbullFightWidth > picPitbullFightHeight ) ? picPitbullFightWidth : picPitbullFightHeight ;
  smallerSide = ( picPitbullFightHeight < picPitbullFightWidth ) ? picPitbullFightHeight : picPitbullFightWidth ;
  ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmall Side:", smallerSide, "\tRatio:", ratio );
  /* Algorithm
  - Establish Landscape or Portrait of DIV
  - Note: I always fill smaller side of DIV, then calculate larger side of DIV
  - Hardcode if ratio will be >1 or <1 ... influences * or /
  - In the image, decide if calculating the larger side or the smaller side
  */
  if ( PitbullFightWidth > PitbullFightHeight ) { //DIV Landscape, find larger side
  picPitbullFightHeightChanged = PitbullFightHeight;
  picPitbullFightHeightChanged = ( picPitbullFightWidth > picPitbullFightHeight ) ? picPitbullFightWidthChanged / ratio : picPitbullFightWidthChanged * ratio;
  println( "Inside If-true:", picPitbullFightWidthChanged );
  } else { //DIV Landscape, find Larger side
    picPitbullFightWidthChanged = PitbullFightWidth;
    picPitbullFightHeightChanged = ( picPitbullFightWidth > picPitbullFightHeight ) ? picPitbullFightWidthChanged / ratio : picPitbullFightWidthChanged * ratio;
    println( "Inside If-false:", picPitbullFightWidthChanged ) ;
    //
  }
  println( "Changed Width:", picPitbullFightWidthChanged, "\tChanged Height:", picPitbullFightHeightChanged );
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( bikeX, bikeY, bikeWidth, bikeHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  //image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picPitbullFight, PitbullFightX, PitbullFightY, picPitbullFightWidthChanged, picPitbullFightHeightChanged  );
  image( PicPitbullFight, PitbullFightX_Changed, 
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//END MAIN
