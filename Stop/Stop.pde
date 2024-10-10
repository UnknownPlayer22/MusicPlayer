import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 3; //Able to Autodetect based on Pathway
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; // beginning current song as ZERO
//
int appWidth, appHeight;
//CAUTION: IF Statement Variable Population
float musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height;
float musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight;
float stopX, stopY, stopWidth, stopHeight;
//
color White=#FFFFFF, Black=#000000;
color stopButtonHoverOver;
//
void setup()
{
  size(1000, 800);
  appWidth = width;
  appHeight = height;
  //Variables for any music button
  musicButtonDIV_Width = appWidth*1/2;
  musicButtonDIV_Height = appHeight*1/2;
  musicButtonDIV_X = musicButtonDIV_Width - musicButtonDIV_Width*1/2;
  musicButtonDIV_Y = musicButtonDIV_Height- musicButtonDIV_Height*1/2;
  //Use if statement to change, introduce ternary operator
  //
  //Population (variables)
  //work out a case Study: shorter side of DIV
  if ( musicButtonDIV_Width >= musicButtonDIV_Height ) { // Landscape //error: square does not go in the middle
    // musicButtonWidth needs to change
    musicButtonSquareWidth = musicButtonDIV_Height ;
    musicButtonSquareHeight = musicButtonDIV_Height ;
    float padding1 = musicButtonDIV_Width - musicButtonDIV_Height; //working out value needed, with formulae
    float padding2 = padding1*1/2; //// working out value needed, with formulae
    musicButtonSquareX = musicButtonDIV_X + padding2 ; //note: minus moves it the wrong way, difficult to see
    musicButtonSquareY = musicButtonDIV_Y;
  } else { //Portrait
    // musicButtonHeight needs to change
    musicButtonSquareWidth = musicButtonDIV_Width ;
    musicButtonSquareHeight = musicButtonDIV_Width;
    float padding1 = musicButtonDIV_Height - musicButtonDIV_Width; //working out value needed, with formulae
    float padding2 = padding1*1/2; ////working out value needed, with formulae
    musicButtonSquareX = musicButtonDIV_X; //note: minus moves it the wrong way, difficult to see
    musicButtonSquareY = musicButtonDIV_Y + padding2;
  }
  //See case studies and paper folding
  stopWidth = musicButtonSquareWidth*1/2;
  stopHeight = musicButtonSquareHeight*1/2;
  stopX =  musicButtonSquareX + musicButtonSquareWidth*1/4;
  stopY =  musicButtonSquareY + musicButtonSquareHeight*1/4;
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  //
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  //Alphebetical order, same as OS ordering files
  String phonkphenixphonkon180000 = "phonk-phenix-phonk-on-180000";
  String hardedmphonk160048 = "hard-edm-phonk-160048";
  String waitingliminalspacesmusic218874 = "waiting-liminal-spaces-music-218874";
  //
  //Add Reading into Array
  String directory = "../" + musicPathway;
  String file = directory + phonkphenixphonkon180000 + mp3FileName;
  song[currentSong] = minim.loadFile( file );
  file = directory + hardedmphonk160048 + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + waitingliminalspacesmusic218874 + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  //
  currentSong = 0;
  //
  song[currentSong].play(0);
  //Use play(timestart) & loop(numberofloops)
  //purpose is 2d shapes
  //Introduce keypressed as keyboard shortcuts
  //introduce mousepressed as an interaction
  //
  //DIVS
  //rect() based on variables; variables with program (introduces parameters of a function and TABS)
  //rect( X, Y, Width, Height );
  // rect( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height );
} //End setup
//
void draw() {
  background(0); //Gray Scale: 0-255, full blue Colour
  //
  rect( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight );
  //
  /* Note: 3 types of colour, in pairs for however
  - Day: TBA-ForeGround | TBA-backround (hoverover)
  - Dark: TBA-foreground | TBA-backround (hoverover)
  - Night, no blue: TBA-foreground | TBA-backround (hoverover)
  - Dark mode is for all the time, how bright the screen is and the eye strain
  - API: when mode is for all the time or just
  - Note: preferences are hardCoded here but can be choices in CS20
  */
  //if ( day ) {} else if ( dark ) {} else {}
  //
  //hoverover IF - used in all other buttons too
  if (mouseX>musicButtonSquareX && mouseX<musicButtonSquareX+musicButtonSquareWidth && mouseY>musicButtonSquareY &&  mouseY<musicButtonSquareY+musicButtonSquareHeight ) {
    stopButtonHoverOver = White;
  } else {
    stopButtonHoverOver = Black;
  }
  fill(stopButtonHoverOver);
  noStroke(); //Colour
  //
  rect( stopX, stopY, stopWidth, stopHeight ); //(X, Y, Width, height, roundedEdge1, roundedEdge2, roundedEdge3, roundedEdge4, )
  fill(255); //noFill
  stroke(1); //Reset Default
  //
  //music Buttons Interactions: cascading IFS can Become AND StateMents
  //Note Keypressed must have click on screen
  //
}//End Draw
//
void mousePressed() {
  //Boolean for click
  //if() {} else {}
  //
  /* STOP Button Mouse Press, after hoverover
  must have hoverover to ensure mouse will activate, visual confirmation of algoritim
  */
 if ( mouseX>musicButtonSquareX && mouseX<musicButtonSquareX+musicButtonSquareWidth && mouseY>musicButtonSquareY && mouseY<musicButtonSquareY+musicButtonSquareHeight ) {
   if ( song[currentSong].isPlaying() ) {
     song[currentSong].pause(); //single tap
   } else {
     song[currentSong].rewind(); //double tap
   }
 }
 //
} //End mousePressed
//
void keyPressed() {
  /* key Board short cuts ... learning what the music buttons could be
  Note: CAP Lock with ||
  if ( key==? || key==? ) ;
  */
  //if ( key=='p' || key=='p' ) song[currentsong].play(); //simple play no double tap possible
  //
  if ( key=='P' || key=='p' ) song[currentSong].loop(0);
  /* note: double tap is automatic rewind, no pause
  simble is two triangles 
  this changes what the button might become after it is pressed
  */
  //if ( key=='S' || key=='s' ) song[currentSong.pause(); // simple stop no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( song[currentSong].isPlaying() ) {
    } else {
      song[currentSong].rewind(); // double tap
    }
  }
}//End keyPressed
//
// End Main Program
  
