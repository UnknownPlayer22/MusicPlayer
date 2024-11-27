/* META DATA - STRINGS
*/
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
int appWidth, appHeight;
float metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1;
float metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2;
float metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3;
//
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListTitleMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListPostionMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListTimeRemainingMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListTotalTimeMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
//
void setup() 
{
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //population
  metaDataX1 = appWidth*1/10;
  metaDataY1 = appHeight*4/10;
  metaDataWidth1 = appWidth*8/10;
  metaDataHeight1 = appHeight*1/10;
  metaDataX2 = appWidth*1/10;
  metaDataY2 = appHeight*3/10;
  metaDataWidth2 = appWidth*3/10;
  metaDataHeight2 = appHeight*1/10;
  metaDataX3 = appWidth*5/10;
  metaDataY3 = appHeight*5/10;
  metaDataWidth3 = appWidth*4/10;
  metaDataHeight3 = appHeight*1/10;
  //DIV
  rect( metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1 );
  rect( metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2 );
  rect( metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3 );
} //End setup
//
void draw() {} //end draw
//
void mousePressed() {} //End MousePressed
//
void keyPressed() {} //End KeyPressed
//
//END MAIN
