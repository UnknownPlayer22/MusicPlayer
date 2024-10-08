import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
//
int appWidth, appHeight;
float musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height;
float muiscButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight;
float stopX, stopY, stopWidth, StopHeight;
//
void setup()
{
  size(900, 800)
  appWidth = width;
  appHeight = height;
  //Variables for any music button
  musicButtonDIV_Width = appWidth*1/2;
  musicButtonDIV_Height = appHeight*1/2;
  musicButtonDIV_X = musicButtonDIV_Width - musicButtonDIV_Width*1/2;
  musicButtonDIV_Y = musicButtonDIV_Height - musicButtonDIV_Height*1/2;
  //
  //Population (variables)
  if ( musicButtonDIV_Width >= musicButtonDIV_Height ) {musicButtonSqareWidth = musicButtonDIV_Height ;
    musicButtonSquareHeight = musicButtonDIV-Height ;
    float padding1 = musicButtonDIV_Width - musicButtonDIV_Height;
    float padding2 = padding*1/2;
    musicButtonSqareX = musicButtonDIV_X + padding2 ;
    musicButtonSqareY = MusicButtonDIV_Y;
    println( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height );
    println ( musicButtonSqareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight );
    println ( padding1 );
  } else {//Portrait
  // musicButtonHeight needs to be changed
  musicButtonSqareWidth = musicButtonDIV_Width ;
  musicButtonSquareHeight = musicButtonDIV_WIdth;
  float padding1 = musicButtonDIV_Height - musicButtonDIV_Width;
  float padding2 = padding1*1/2;
  musicButtonSquareX = musicButtonDIV_X;
  musicButtonSquareY = musicButtonDIV_Y + padding2;
  println( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height );
  println ( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight );
  println ( padding1 );
  }
  /* Music Button Square Formulae for IF satament above
  // use paper folding case study
  float padding = 1.0/5.0;
  float stopButtonSize = musicButtonSquareWidth*3/5;
  stopWidth = stopButtonSize;
  stopHeight = stopButtonSize;
  stopX = musicButtonSquareX + musicButtonSquareX*padding;
  stopY = musicButtonSquareY + musicButtonSquareY*padding;
  */
  //
  minim = new Minim(this);
  //
  // Load Music
  String musicPathway = "music/";
  String mp3FileName = ".mp3";
  String hardedmphonk160048 = "hard-edm-phonk-160048";
  String waitingliminalspacesmusic218874 = "waiting-liminal-spaces-music-218874";
  String phonkphenixphonkon180000 = "phonk-phenix-phonk-on-180000";
  //
  String directory = "../../../" + muiscPathway;
  String file = directory + phonkphenixphonkon180000 + mp3FileName;
  song[currentSong] = minim.loadFile( file );
  file = directory + phonkphenixphonkon180000 + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + waitingliminalspacesmusic218874 + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + hardedmphonk160048 + mp3FileName;
  //
  currentSong = 0;
  //
  song[currentSong].play();
  //
  //DIVs
  //rect()
  //rect( X, Y, Width, Height );
  //rect( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonHeight );
} //End setup
//
void draw() {
  //background(200); // GrayScale; 0-255
  //
  rect( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonHeight );
  //
  //if ( day ) {} else if ( dark ) {} else {}
  //
  //fill(); //Colour
  //stroke(); //Colour
  //
  rect( stopX, stopY, stopWidth, stopHeight );
  //noFill();
  //noStroke();
  //
  //song[currentSong].isPlaying();
  //
} //End draw
//
void mousePressed() {
  //if() {} else {}
} //End mousePressed
//
void keyPressed() {
  //if ( key==? || key==? ) ;
} //End mousePressed
//
void keyPressed() {
  //if ( key==? || key==? ) ;
} //End keyPressed
//
// End Main Progran
