//Global Variables
float gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight;
float bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight;
float topButtonX, topButtonY, topButtonWith, topButtonHeight;
float tttWidth, tttHeight;
float tttX1, tttX2, tttX3, tttX4, tttX5, tttX6, tttX7, tttX8, tttX9;
float tttY1, tttY2, tttY3, tttY4, tttY5, tttY6, tttY7, tttY8, tttY9;
float restartX, restartY, restartWidth, restartHeight;
//
void population() {
  gameSpaceX = appWidth*0;
  gameSpaceY = smallDimension * 11/31;
  gameSpaceWidth = appWidth-1;
  gameSpaceHeight = smallDimension*15/31-1;
  bottomButtonX = gameSpaceX;
  bottomButtonY = smallDimension*26/31;
  bottomButtonWidth = gameSpaceWidth-1;
  bottomButtonHeight = smallDimension*5/31-1;
  topButtonX = gameSpaceX;
  topButtonY = smallDimension*0;
  topButtonWith = gameSpaceWidth-1;
  topButtonHeight = smallDimension*11/31-1;
  float tttBoardSection = gameSpaceHeight*1/3;
  tttWidth = tttHeight = tttBoardSection;
  float centerBoard = ( appWidth - gameSpaceHeight ) / 2;
  tttX1 = tttX4 = tttX7 = centerBoard;
  tttX2 = tttX5 = tttX8 = centerBoard + ( 1 * tttBoardSection );
  tttX3 = tttX6 = tttX9 = centerBoard + ( 2 * tttBoardSection );
  tttY1 = tttY2 = tttY3 = gameSpaceY;
  tttY4 = tttY5 = tttY6 = gameSpaceY + ( 1 * tttBoardSection );
  tttY7 = tttY8 = tttY9 = gameSpaceY + ( 2 * tttBoardSection );
} //End Population
