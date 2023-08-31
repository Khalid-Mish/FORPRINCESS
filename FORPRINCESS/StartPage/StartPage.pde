//set BGMs
import processing.sound.*;

SoundFile[] bgms = new SoundFile[4];
int currentBGM;

//Start pages
PImage bgImage;
PImage titleImage;
PImage enterImage;
PImage scoreTableImage;
PImage settingTableImage;
PImage brightnessImage;

int bgX = 0;
boolean startMove = false;

ArrayList<PVector> stars = new ArrayList<PVector>();
int numStars = 100;

float offset = 0;

//Buttons
int buttonWidth = 200;
int buttonHeight = 50;
int buttonMargin = 20;
int startBtnX = 0;
int startBtnY = 0;
int scoreBtnX = 0;
int scoreBtnY = 0;
int settingBtnX = 0;
int settingBtnY = 0;
int backBtnX = 0;
int backBtnY = 0;

PImage startImage;
PImage scoreImage;
PImage settingImage;
PImage coinImage;
PImage backImage;

PImage lowImage;
PImage mdmImage;
PImage highImage;
PImage darkImage;
PImage briImage;
PImage easyImage;
PImage normImage;
PImage hardImage;

//Page mode
int pageMode = -1;

//Game status (Win 1/Lose -1/Playing 0)
int gameMode = 0;

//Game pages
PImage gameBgImage;
PImage heartImage;

int startTime = 0;
int timerDuration = 3600000;

PFont pixelFont;

int initialLives = 3;
int lives;
int score = 0;
int brightness = 0;
float volume = 0.40;

void setup() {
  size(1000, 850);
  
  //BGMs
  currentBGM = int(random(bgms.length));
  
  bgms[0] = new SoundFile(this, "../musics/bgm1.wav");
  bgms[1] = new SoundFile(this, "../musics/bgm2.wav");
  bgms[2] = new SoundFile(this, "../musics/bgm3.wav");
  bgms[3] = new SoundFile(this, "../musics/bgm4.wav");
  
  //Start pages
  bgImage = loadImage("../images/StartPage/background.png");
  enterImage = loadImage("../images/StartPage/EnterToStart.png");
  titleImage = loadImage("../images/StartPage/title.png");
  brightnessImage = loadImage("../images/StartPage/brightness.png");
  
  //SettingPage's buttons
  lowImage = loadImage("../images/StartPage/low.png");
  mdmImage = loadImage("../images/StartPage/mdm.png");
  highImage = loadImage("../images/StartPage/high.png");
  darkImage = loadImage("../images/StartPage/dark.png");
  briImage = loadImage("../images/StartPage/bri.png");
  easyImage = loadImage("../images/StartPage/easy.png");
  normImage = loadImage("../images/StartPage/norm.png");
  hardImage = loadImage("../images/StartPage/hard.png");
  
  //Buttons
  startImage = loadImage("../images/StartPage/StartDefault.png");
  scoreImage = loadImage("../images/StartPage/ScoreDefault.png");
  settingImage = loadImage("../images/StartPage/SettingDefault.png");
  coinImage = loadImage("../images/StartPage/coin.png");
  backImage = loadImage("../images/StartPage/back.png");
  scoreTableImage = loadImage("../images/StartPage/scoretable.png");
  settingTableImage = loadImage("../images/StartPage/settings.png");
  
  //Background stars for home page
  for (int i = 0; i < numStars; i++) {
    stars.add(new PVector(random(width), random(height)));
  }
  
  //Game background
  gameBgImage = loadImage("../images/GamePage/background.png");
  heartImage = loadImage("../images/GamePage/heart.png");
  
  //Set font
  pixelFont = createFont("../font/PixelBold.ttf", 32);
  textFont(pixelFont);
  
  //Game
  lives = initialLives;
  
}

void draw() {
  background(0);
  
  //play bgm
  if (!bgms[currentBGM].isPlaying()) {
    bgms[currentBGM].amp(volume);
    bgms[currentBGM].loop();
  }
  
//Background and Stars
  noStroke();
  fill(220);
  for (PVector star : stars) {
    ellipse(star.x, star.y, 5, 5);
  }
  
  tint(255, 200);
  
  //Go to start page
  if (startMove) {
    if (bgX < bgImage.width - width) {  
      bgX += 9;
    } else if(pageMode == -1) {pageMode = 0;}
    enterImage = loadImage("../images/StartPage/none.png");
  }
  
  for (int x = 0; x < width; x += bgImage.width) {
    for (int y = 0; y < height; y += bgImage.height) {
      image(bgImage, x - bgX, y);
    }
  }
  

  for (PVector star : stars) {
    star.x += random(-1, 1);
    star.y += random(-1, 1);
    star.x = constrain(star.x, 0, width);
    star.y = constrain(star.y, 0, height);
  }

//Colorful title
  offset += 0.02;
  tint(sin(offset) * 127 + 100, sin(offset + PI / 3) * 127 + 100, sin(offset + 2 * PI / 3) * 127 + 100);
  image(titleImage, width/2 - 450, 50, 900, 200);
  noTint();
  
//Enter to start page info
  if (frameCount % 45 < 15) {
    tint(255, 100);
  }
  image(enterImage, width/2 - 390, height/2 + 100, 800, 56);
  noTint();
  
//Buttons appear (Home page mode);
  if (pageMode == 0) {
    
    //Start Game button
    startBtnX = width/2 - buttonWidth/2;
    startBtnY = height/2 - buttonHeight;
    if (mouseX > startBtnX && mouseX < startBtnX + buttonWidth && mouseY > startBtnY && mouseY < startBtnY + buttonHeight) {
      image(coinImage, startBtnX - 40, startBtnY + 7, 30, 30);
      tint(255, 100);
    } else noTint();
    image(startImage, startBtnX, startBtnY, buttonWidth, buttonHeight); 
    
    //Score button
    scoreBtnX = width/2 - int(buttonWidth * 1.24) /2;
    scoreBtnY = height/2 + 20;
    if (mouseX > scoreBtnX && mouseX < scoreBtnX + buttonWidth && mouseY > scoreBtnY && mouseY < scoreBtnY + buttonHeight) {
      image(coinImage, scoreBtnX - 40, scoreBtnY + 7, 30, 30);
      tint(255, 100);
    } else noTint();
    image(scoreImage, scoreBtnX, scoreBtnY, buttonWidth * 1.24, buttonHeight); 
    
    //Setting button
    settingBtnX = width/2 - int(buttonWidth/1.24)/2;
    settingBtnY = height/2 + buttonHeight + 40;
    if (mouseX > settingBtnX && mouseX < settingBtnX + buttonWidth && mouseY > settingBtnY && mouseY < settingBtnY + buttonHeight) {
      image(coinImage, settingBtnX - 40, settingBtnY + 7, 30, 30);
      tint(255, 100);
    } else noTint();
    image(settingImage, settingBtnX, settingBtnY, buttonWidth / 1.24, buttonHeight); 
  }
  
//Game page mode;
  if (pageMode == 1) {
          
    //set time counter
    int elapsedTime = millis() - startTime;
    
    //Game lose when out of duration
    if (elapsedTime >= timerDuration) {
      gameMode = -1;
      pageMode = 4;
      noLoop();
    }
    
    if (lives <= 0) {
      gameMode = -1;
      pageMode = 4;
    }//Set lose game mode while lives lose all
    
    //Game Status is playing
    if (gameMode == 0) {
    
      //Set Game Background;
      background(64); 
      
      for (int x = 0; x < width; x += gameBgImage.width) {
        for (int y = 0; y < height; y += gameBgImage.height) {
          tint(255, 100);
          image(gameBgImage, x, y);
        }
      }
      noTint();
    
      int minutes = int((timerDuration - elapsedTime) / 1000 / 60);
      int seconds = int((timerDuration - elapsedTime) / 1000 % 60);
      
      String minutesStr = nf(59 - minutes, 2);
      String secondsStr = nf(59 - seconds, 2); 
      
      //Set lives, score and time
      textSize(18);
      
      text("Score: " , 10, 20);
      text("Lives: " , width - 180, 20);
      text("Time: " + minutesStr + ":" + secondsStr, width / 2 - 70, 20);
      
      if (lives >= 1) { 
        image(heartImage, width - 110, -7, 40, 40); 
        if (lives >= 2) {
          image(heartImage, width - 80, -7, 40, 40); 
          if (lives == 3) {
            image(heartImage, width - 50, -7, 40, 40); 
          }
        }
      }
      
      //Add game display here;
      
    }
  }
  
//Settings page mode;
  if (pageMode == 2) {
    
    //Setting table;
    image(settingTableImage, 50, 290, 900, 320);
    
//Add setting buttons display here;    
    //set volume
    if (volume == 0.15) tint(255, 80);
    mouseOnButton(width - 290, 365, 50, 30);
    image(lowImage, width - 290, 365, 50, 30);
    noTint();
    if (volume == 0.40) tint(255, 80);
    mouseOnButton(width - 220, 365, 50, 30);
    image(mdmImage, width - 220, 365, 50, 30);
    noTint();
    if (volume == 0.65) tint(255, 80);
    mouseOnButton(width - 150, 365, 50, 30);  
    image(highImage, width - 150, 365, 50, 30);
    noTint();
    
    //Set brightness
    if (brightness == 200) tint(255, 80);
    mouseOnButton(width - 290, 433, 50, 30);  
    image(darkImage, width - 290, 433, 50, 30);
    noTint();
    if (brightness == 30) tint(255, 80);
    mouseOnButton(width - 220, 433, 50, 30);  
    image(mdmImage, width - 220, 433, 50, 30);
    noTint();
    if (brightness == 0) tint(255, 80);
    mouseOnButton(width - 150, 433, 50, 30);  
    image(briImage, width - 150, 433, 50, 30);
    noTint();
    
    //Set game hard mode
    if (initialLives == 3) tint(255, 80);
    mouseOnButton(width - 290, 498, 50, 30); 
    image(easyImage, width - 290, 498, 50, 30);
    noTint();    
    if (initialLives == 2) tint(255, 80);
    mouseOnButton(width - 220, 498, 50, 30); 
    image(normImage, width - 220, 498, 50, 30);
    noTint();
    if (initialLives == 1) tint(255, 80);
    mouseOnButton(width - 150, 498, 50, 30); 
    image(hardImage, width - 150, 498, 50, 30);
    noTint();
    
    //Back button
    backBtnX = width - buttonWidth;
    backBtnY = height - buttonHeight * 2;
    if (mouseX > backBtnX && mouseX < backBtnX + buttonWidth && mouseY > backBtnY && mouseY < backBtnY + buttonHeight) {
      image(coinImage, backBtnX - 40, backBtnY + 7, 30, 30);
      tint(255, 100);
    } else noTint();
    image(backImage, backBtnX, backBtnY, buttonWidth / 1.5, buttonHeight);
  }

//Scores page mode;
  if (pageMode == 3) {
    
    //Score Table display
    image(scoreTableImage, 50, 220, 900, 500);
    
    
    //Add score display here, which contains finish time, score, and how long player the costs, use arraylist;
    
          
    //Back button
    backBtnX = width - buttonWidth;
    backBtnY = height - buttonHeight * 2;
    if (mouseX > backBtnX && mouseX < backBtnX + buttonWidth && mouseY > backBtnY && mouseY < backBtnY + buttonHeight) {
      image(coinImage, backBtnX - 40, backBtnY + 5, 30, 30);
      tint(255, 100);
    } else noTint();
    image(backImage, backBtnX, backBtnY, buttonWidth / 1.5, buttonHeight);
  }
  
//Game end page mode (Win or Lose);
  if (pageMode == 4) {
    resetGame();
    
    //Add game end here, like restart button and back home button;
    
    if (gameMode == -1) { //Lose game page;
    
    } else if (gameMode == 1) { //Win page;
    
    }
    
    
  }
  
  tint(255, brightness);
  image(brightnessImage, 0, 0);
}

void resetGame() {
  lives = initialLives;
  score = 0;
  
  //Other parts need to be initialised when restart game add here;
}

void mouseOnButton(int x, int y, int btnWidth, int btnHeight) {
  if (mouseX > x && mouseX < x + btnWidth && mouseY > y && mouseY < y + btnHeight) {
      tint(255, 150);
    } //else noTint();
}

boolean isClickButton(int x, int y, int btnWidth, int btnHeight) {
  if (mouseX > x && mouseX < x + btnWidth && mouseY > y && mouseY < y + btnHeight) {
      return true;
    } else return false;
}

void keyPressed() {
  if (keyCode == ENTER) {
    startMove = true;
  }
}

void mousePressed() {
  
  //start page buttons
  if (pageMode == 0) {
    if (mouseX > startBtnX && mouseX < startBtnX + buttonWidth && mouseY > startBtnY && mouseY < startBtnY + buttonHeight) {
      //println("Start Game");
      pageMode = 1;
      startTime = millis();
      loop(); 
      bgms[currentBGM].stop();
      currentBGM = int(random(bgms.length));
    }
    else if (mouseX > scoreBtnX && mouseX < scoreBtnX + buttonWidth && mouseY > scoreBtnY && mouseY < scoreBtnY + buttonHeight) {
      //println("Score History");
      pageMode = 3;
    }
    else if (mouseX > settingBtnX && mouseX < settingBtnX + buttonWidth && mouseY > settingBtnY && mouseY < settingBtnY + buttonHeight) {
      //println("Settings");
      pageMode = 2;
    }
  }
  
  //back button
  if (pageMode == 2 || pageMode == 3) {
     if (mouseX > backBtnX && mouseX < backBtnX + buttonWidth && mouseY > backBtnY && mouseY < backBtnY + buttonHeight) {
       pageMode = 0; //Back to home page from settings/score page
     }
  }
  
  //Settings page
  if (pageMode == 2) {
    if (isClickButton(width - 290, 365, 50, 30)) volume = 0.15;
    if (isClickButton(width - 220, 365, 50, 30)) volume = 0.40;
    if (isClickButton(width - 150, 365, 50, 30)) volume = 0.65;
    
    if (isClickButton(width - 290, 433, 50, 30)) brightness = 200;
    if (isClickButton(width - 220, 433, 50, 30)) brightness = 30;
    if (isClickButton(width - 150, 433, 50, 30)) brightness = 0;
    
    if (isClickButton(width - 290, 498, 50, 30)) initialLives = 3;
    if (isClickButton(width - 220, 498, 50, 30)) initialLives = 2;
    if (isClickButton(width - 150, 498, 50, 30)) initialLives = 1;
    lives = initialLives;
    bgms[currentBGM].amp(volume);
  }
  
  
}

void mouseMoved() {
  redraw();
}
