int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float PitbullFightX, PitbullFightY, PitbullFightWidth, PitbullFightHeight;
PImage picBackground;
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
  PitbullFightX = appWidth;
  PitbullFightY = appHeight;
  PitbullFightWidth = appWidth;
  PitbullFightHeight = appHeight;
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( PitbullFightX, PitbullFightY, PitbullFightWidth, PitbullFightHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//END MAIN
