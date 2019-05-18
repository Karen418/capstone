int STATE;
int PAGE_ONE = 1;//welcomepage
int PAGE_TWO = 2;//
int PAGE_THREE = 3;
int PAGE_FOUR = 4;
int PAGE_FIVE = 5;
int PAGE_SIX = 6;
import processing.sound.*;
SoundFile file;

//function buttons
PImage imgs;
PImage imgn;
PImage imgp;
PImage imgsr;
PImage imgnr;
PImage imgpr;
PImage startover;
PImage startoverr;
PImage instruction;


PImage imgstart;
PImage imgredo;
PImage imgreplay;
PImage imgstop;
PImage imgsave;
PImage imgmusic;
PImage imgcamera;


PImage imgstartr;
PImage imgredor;
PImage imgreplayr;
PImage imgstopr;
PImage imgsaver;
PImage imgmusicr;
PImage imgcamerar;


PFont font;

import com.hamoid.*;
VideoExport videoExport;
VideoExport videoRef;


float movieFPS = 15;
float soundDuration = 30; 


//BGV
boolean recording = false;
import processing.serial.*;
import processing.video.*;
Movie BGV;

//BGV2
Movie BGV2;
PGraphics pg;

//BGV3
Movie BGV3;

//case1
String text1 = "Hello charming, welcome to the world of film and music. Here you will be able to create your own video and voice over introducing your culture. Are you ready?";
int counter;
float x = 510;
float y = 650;
float w = 200;
float h = 150;

//case2
int mapx;
int mapy;
PImage textbook;
PImage girl;
PImage boy;
int currentString = 0;
String current = "";
String Name = "";
String Country = "";
color Namec= 150;
color Countryc= 150;
int Namep;
int Countryp;
boolean displayamericaboy = false;
boolean displayamericagirl = false;
boolean displayafericaboy = false;
boolean displayafericagirl = false;
boolean displayasiaboy = false;
boolean displayasiagirl = false;

//case3

import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
int counterFace = 1;
PImage slice;
PImage cartoon1;
PImage a;
int sliceW = 0;
int sliceH = 0;
int number = 0;
int xFace = 0;
int yFace = 0;

boolean detected = false;
boolean saved = false;
boolean displayimage = false;

//case4
import http.requests.*;


float finger1X, finger1Y;
float finger2X, finger2Y;
float finger3X, finger3Y;
float finger4X, finger4Y;
float finger5X, finger5Y;
float length1, length2, length3, length4, length5;
float angle1, angle2, angle3, angle4, angle5;

PImage imgbody;
PImage imgrightarm;
PImage imgleftarm;
PImage imgrightleg;
PImage imgleftleg;
PImage imgrightfeet;
PImage imgleftfeet;


PImage americaboyicon;
PImage americagirlicon;
PImage afericagirlicon;
PImage asiagirlicon;
PImage afericaboyicon;
PImage asiaboyicon;
PImage imgbg;

//case5

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;
import java.io.BufferedWriter;


BufferedWriter output = null;
import ddf.minim.*;
import ddf.minim.effects.*;

Minim minim;
AudioInput in;
AudioRecorder recorder;
int counter1;
//AudioSample kick;
String filename;

//case 6 
String Email = "";
color Emailc= 150;
int Emailp;

PImage textbook1;
PImage emailblack;
PImage emailred;

void setup() {

  instruction = loadImage("instruction.png");
  startover = loadImage("startover.png");
  startoverr = loadImage("startoverr.png");
  //long start_millis = millis();
  BGV= new Movie(this, "BGV.mp4");


  pg = createGraphics(1000, 550);
  BGV.loop();
  size(1200, 800);
  font = loadFont("MarkerFelt-Thin-100.vlw");
  STATE = PAGE_ONE;

  //println("2", millis() - start_millis);

  imgs = loadImage("StartButton.png");
  imgsr = loadImage("StartButtonRed.png");

  imgn = loadImage("NextButton.png");
  imgnr = loadImage("NextButtonRed.png");


  imgp = loadImage("PreviousButton.png");
  imgpr = loadImage("PreviousButtonRed.png");



  imgstart = loadImage("start.png");
  imgredo = loadImage("redo.png");
  imgreplay = loadImage("replay.png");
  imgstop = loadImage("stop.png");
  imgsave = loadImage("save.png");
  imgmusic = loadImage("music.png");
  imgcamera = loadImage("camera.png");

  imgstartr = loadImage("startr.png");
  imgredor = loadImage("redor.png");
  imgreplayr = loadImage("replayr.png");
  imgstopr = loadImage("stopr.png");
  imgsaver = loadImage("saver.png");
  imgmusicr = loadImage("musicr.png");
  imgcamerar = loadImage("camerar.png");



  //case2

  //println("3", millis() - start_millis);
  textbook = loadImage("textbook.png");
  girl= loadImage("girl.png");
  boy= loadImage("boy.png");
  //case3
  video = new Capture(this, 800/2, 800/2);
  opencv = new OpenCV(this, 800/2, 800/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  video.start();

  //case4
  //println("4", millis() - start_millis);
  //test
  //imgbody = loadImage("americaboybody.png");
  //imgrightarm = loadImage("americaboyrightarm.png");
  //imgleftarm = loadImage("americaboyleftarm.png");
  //imgrightleg = loadImage("americaboyrightleg.png");
  //imgleftleg = loadImage("americaboyleftleg.png");
  //imgrightfeet = loadImage("americaboyrightfeet.png");
  //imgleftfeet = loadImage("americaboyleftfeet.png");




  //case5

  minim = new Minim(this);


  counter1 = 1;
  filename = "audio"+counter1+".wav";
  minim = new Minim(this);
  in = minim.getLineIn(Minim.STEREO, 2048);
  recorder = minim.createRecorder(in, filename, true);



  LeapMotion_setup();
  imgs = loadImage("StartButton.png");
  imgn = loadImage("NextButton.png");
  imgstart = loadImage("start.png");
  imgredo = loadImage("redo.png");
  imgreplay = loadImage("replay.png");
  imgstop = loadImage("stop.png");
  imgsave = loadImage("save.png");
  imgmusic = loadImage("music.png");

  //video export
  videoExport = new VideoExport(this, Name+"video.mp4", pg);
  videoExport.setFrameRate(movieFPS);
  videoExport.startMovie();

  videoRef = new VideoExport(this, "reference.mp4");
  videoRef.setFrameRate(movieFPS);
  videoRef.startMovie();

  //println("5", millis() - start_millis);
  americagirlicon = loadImage("americagirlicon.png");
  americaboyicon = loadImage("americaboyicon.png");
  afericagirlicon= loadImage("afericagirlicon.png");
  afericaboyicon= loadImage("afericaboyicon.png");
  asiagirlicon= loadImage("asiagirlicon.png");
  asiaboyicon= loadImage("asiaboyicon.png");


  //case 6 
  textbook1 = loadImage("textbook1.png");
  emailblack = loadImage("emailblack.png");
  emailred= loadImage("emailred.png");
}

void draw() {
  image(BGV, 0, 0, width, height);

  switch(STATE) {
  case 1:
    pushMatrix();
    textFont(font, 30);

    fill(255);
    typewriteText();

    //image(imgs, x, y, w, h);
    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      //println("The mouse is pressed and over the button1");
      //STATE=2;
      image(imgsr, x, y, w, h);
    } else {
      image(imgs, x, y, w, h);
    }

    if (mousePressed) {
      if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
        println("The mouse is pressed and over the button1");
        STATE=2;
      }
    }
    popMatrix();
    break;

  case 2:
    if (mousePressed) {
      println(mouseX, mouseY);
    }
    pushMatrix();
    scale(0.5);
    textFont(font, 30);
    image(textbook, 33, 138);
    fill(0);
    textSize(45);
    text("your name", 233, 538);
    text("the city that you came from (low case)", 153, 738);
    //text("all lower cases please", 233, 938);
    text("Choose your character", 1012, 377);

    //if (mouseX>121 && mouseX <169 && mouseY>172 && mouseY <214) {
    //  image(girl, 233, 338, 160, 160);
    //  image(boy, 433, 338);
    //  //println("girl");
    //} else if (mouseX>219 && mouseX <259 && mouseY>171 && mouseY <217) {
    //  image(boy, 433, 338, 160, 160);
    //  image(girl, 233, 338);
    //  //println("boy");
    //} else {
    //  image(girl, 233, 338);
    //  image(boy, 433, 338);
    //}

    if (mouseX >= 116 && mouseX <= 254 && 
      mouseY >= 295 && mouseY <= 323) {
      if (mousePressed) {
        currentString = 1;
        current = Name;
      }
    }
    fill(Namec);
    rect(233, 588, 280, 60, 10);

    if (mouseX >= 116 && mouseX <= 254 && 
      mouseY >= 396 && mouseY <= 424) {

      if (mousePressed) {
        currentString = 2;
        current = Country;
      }
    }
    fill(Countryc);
    rect(233, 788, 280, 60, 10);


    if (currentString == 1) {
      Name = current;
      Namec= 250;
      Countryc= 150;
      fill(0);
      textSize(45);
      text(Country, 240, 828);
      text(Name, 240, 628);
      //println(Name);
    } else if (currentString == 2) {

      Country = current;
      Namec= 150;
      Countryc= 250;
      fill(0);
      textSize(45);
      text(Country, 240, 828);
      text(Name, 240, 628);
      println("c"+Country);
    }
    popMatrix();

    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      println("The mouse is over the button2n");
      image(imgp, x-200, y, w, h);
      image(imgnr, x, y, w, h);
    } else if (mouseX>x-200 && mouseX <x+w-200 && mouseY>y && mouseY <y+h) {
      println("The mouse is over the button2p");
      image(imgpr, x-200, y, w, h);
      image(imgn, x, y, w, h);
    } else {
      image(imgp, x-200, y, w, h);
      image(imgn, x, y, w, h);
    }


    if (mouseX>520 && mouseX <562 && mouseY>224 && mouseY <312) {
      image(americagirlicon, 600, 200);
      image(afericaboyicon, 500, 350);
      image(afericagirlicon, 600, 350);
      image(asiagirlicon, 700, 200);
      image(asiaboyicon, 700, 350);
      image(americaboyicon, 500, 200, 100, 180);

      if (mousePressed) {
        displayamericaboy= true;
        displayamericagirl = false;
        displayafericaboy = false;
        displayafericagirl = false;
        displayasiaboy = false;
        displayasiagirl = false;

        imgbody = loadImage("AmericaBoy.png");
        //imgrightarm = loadImage("americaboyrightarm.png");
        //imgleftarm = loadImage("americaboyleftarm.png");
        //imgrightleg = loadImage("americaboyrightleg.png");
        //imgleftleg = loadImage("americaboyleftleg.png");
        //imgrightfeet = loadImage("americaboyrightfeet.png");
        //imgleftfeet = loadImage("americaboyleftfeet.png");
      }
    } else if (mouseX>620 && mouseX <662 && mouseY>224 && mouseY <312) {
      image(americaboyicon, 500, 200);
      image(afericaboyicon, 500, 350);
      image(afericagirlicon, 600, 350);
      image(asiagirlicon, 700, 200);
      image(asiaboyicon, 700, 350);
      image(americagirlicon, 600, 200, 100, 180);

      if (mousePressed) {
        displayamericagirl= true;
        displayamericaboy = false;
        displayafericaboy = false;
        displayafericagirl = false;
        displayasiaboy = false;
        displayasiagirl = false;

        imgbody = loadImage("AmericaGirl.png");
        //imgrightarm = loadImage("americagirlrightarm.png");
        //imgleftarm = loadImage("americagirlleftarm.png");
        //imgrightleg = loadImage("americagirlrightleg.png");
        //imgleftleg = loadImage("americagirlleftleg.png");
        //imgrightfeet = loadImage("americagirlrightfeet.png");
        //imgleftfeet = loadImage("americagirlleftfeet.png");
      }
    } else if (mouseX>520 && mouseX <562 && mouseY>374 && mouseY <462) {
      image(americaboyicon, 500, 200);
      image(americagirlicon, 600, 200);
      image(afericagirlicon, 600, 350);
      image(asiagirlicon, 700, 200);
      image(asiaboyicon, 700, 350);
      image(afericaboyicon, 500, 350, 100, 180);
      if (mousePressed) {
        displayafericaboy= true;
        displayamericaboy = false;
        displayamericagirl = false;
        displayafericagirl = false;
        displayasiaboy = false;
        displayasiagirl = false;

        imgbody = loadImage("AfericaBoy.png");
        //imgrightarm = loadImage("afericaboyrightarm.png");
        //imgleftarm = loadImage("afericaboyleftarm.png");
        //imgrightleg = loadImage("afericaboyrightleg.png");
        //imgleftleg = loadImage("afericaboyleftleg.png");
        //imgrightfeet = loadImage("afericaboyrightfeet.png");
        //imgleftfeet = loadImage("afericaboyleftfeet.png");
      }
    } else if (mouseX>620 && mouseX <662 && mouseY>374 && mouseY <462) {
      image(americaboyicon, 500, 200);
      image(afericaboyicon, 500, 350);
      image(americagirlicon, 600, 200);
      image(asiagirlicon, 700, 200);
      image(asiaboyicon, 700, 350);
      image(afericagirlicon, 600, 350, 100, 180);
      if (mousePressed) {
        displayafericagirl= true;
        displayamericaboy = false;
        displayamericagirl = false;
        displayafericaboy = false;       
        displayasiaboy = false;
        displayasiagirl = false;

        imgbody = loadImage("AfericaGirl.png");
        //imgrightarm = loadImage("afericagirlrightarm.png");
        //imgleftarm = loadImage("afericagirlleftarm.png");
        //imgrightleg = loadImage("afericagirlrightleg.png");
        //imgleftleg = loadImage("afericagirlleftleg.png");
        //imgrightfeet = loadImage("afericagirlrightfeet.png");
        //imgleftfeet = loadImage("afericagirlleftfeet.png");
      }
    } else if (mouseX>720 && mouseX <762 && mouseY>374 && mouseY <462) {
      image(americaboyicon, 500, 200);
      image(afericaboyicon, 500, 350);
      image(americagirlicon, 600, 200);
      image(asiagirlicon, 700, 200);
      image(afericagirlicon, 600, 350);
      image(asiaboyicon, 700, 350, 100, 180);
      if (mousePressed) {

        displayasiaboy= true;
        displayamericaboy = false;
        displayamericagirl = false;
        displayafericaboy = false;
        displayafericagirl = false;
        displayasiagirl = false;

        imgbody = loadImage("AsiaBoy.png");
        //imgrightarm = loadImage("asianboyrightarm.png");
        //imgleftarm = loadImage("asianboyleftarm.png");
        //imgrightleg = loadImage("asianboyrightleg.png");
        //imgleftleg = loadImage("asianboyleftleg.png");
        //imgrightfeet = loadImage("asianboyrightfeet.png");
        //imgleftfeet = loadImage("asianboyleftfeet.png");
      }
    } else if (mouseX>720 && mouseX <762 && mouseY>224 && mouseY <312) {
      image(americaboyicon, 500, 200);
      image(afericaboyicon, 500, 350);
      image(americagirlicon, 600, 200);
      image(afericagirlicon, 600, 350);
      image(asiaboyicon, 700, 350);
      image(asiagirlicon, 700, 200, 100, 180);


      if (mousePressed) {
        displayasiagirl= true;
        displayamericaboy = false;
        displayamericagirl = false;
        displayafericaboy = false;
        displayafericagirl = false;
        displayasiaboy = false;

        imgbody = loadImage("AsiaGirl.png");
        //imgrightarm = loadImage("asiangirlrightarm.png");
        //imgleftarm = loadImage("asiangirlleftarm.png");
        //imgrightleg = loadImage("asiangirlrightleg.png");
        //imgleftleg = loadImage("asiangirlleftleg.png");
        //imgrightfeet = loadImage("asiangirlrightfeet.png");
        //imgleftfeet = loadImage("asiangirlleftfeet.png");
      }
    } else {
      image(americaboyicon, 500, 200);
      image(americagirlicon, 600, 200);
      image(afericaboyicon, 500, 350);
      image(afericagirlicon, 600, 350);
      image(asiagirlicon, 700, 200);
      image(asiaboyicon, 700, 350);
    }


    if (displayamericaboy) {
      image(americaboyicon, 900, 200, 180, 300);
    }
    if (displayamericagirl) {
      image(americagirlicon, 900, 200, 180, 300);
    }
    if (displayafericaboy) {
      image(afericaboyicon, 900, 200, 180, 300);
    }
    if (displayafericagirl) {
      image(afericagirlicon, 900, 200, 180, 300);
    }
    if (displayasiagirl) {
      image(asiagirlicon, 900, 200, 180, 300);
    }
    if (displayasiaboy) {
      image(asiaboyicon, 900, 200, 180, 300);
    }



    if (mousePressed) {
      if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
        println("The mouse is pressed and over the button2n");
        fill(0);
        STATE = 3;
      }
      if (mouseX>x-200 && mouseX <x+w-200 && mouseY>y && mouseY <y+h) {
        println("The mouse is pressed and over the button2p");
        fill(0);
        STATE = 1;
      }
    }

    break;

  case 3:

    pushMatrix();
    //long start_millis = millis();
    //image(imgn, x, y, w, h);

    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      image(imgp, x-200, y, w, h);
      image(imgnr, x, y, w, h);
    } else if (mouseX>x-200 && mouseX <x+w-200 && mouseY>y && mouseY <y+h) {
      image(imgpr, x-200, y, w, h);
      image(imgn, x, y, w, h);
    } else {
      image(imgp, x-200, y, w, h);
      image(imgn, x, y, w, h);
    }



    textFont(font, 30);
    opencv.loadImage(video);
    //println("2", millis() - start_millis);
    opencv.adaptiveThreshold(591, 1);
    //println("3", millis() - start_millis);
    PImage adaptive = opencv.getSnapshot();
    //println("4", millis() - start_millis);
    image(video, 350, 150);
    //println("5", millis() - start_millis);



    if (mouseX>350 && mouseX <420 && mouseY>0 && mouseY <80) {
      image(imgcamerar, 350, 0, 80, 80);
      image(imgredo, 480, 0, 80, 80);
      text("Take a picture", 350, 120);
    } else if (mouseX>480 && mouseX <560 && mouseY>0 && mouseY <80) {
      image(imgcamera, 350, 0, 80, 80);
      image(imgredor, 480, 0, 80, 80);
      text("Redo", 480, 120);
    } else {
      image(imgcamera, 350, 0, 80, 80);
      image(imgredo, 480, 0, 80, 80);
    }



    noFill();
    stroke(0, 255, 0);
    strokeWeight(3);
    //println("6", millis() - start_millis);
    Rectangle[] faces = opencv.detect();
    //println("7", millis() - start_millis);
    //println(faces.length);


    if (detected == true) {
      println("true");
      fill(255);
      text("Ready to take the picture, please press the camera button and smile", 200, 600);
      if (mousePressed) {
        if (mouseX>350 && mouseX <420 && mouseY>0 && mouseY <80) {
          pushMatrix();
          translate(215, 115);
          //text("Picture Taken", 250, 600);
          displayimage= true;
          popMatrix();
          stroke(255);
          fill(255);
          if (!saved) {
            a.save("photo-" + counterFace + ".jpg");
            counterFace++;
            saved = true;
            //println("9", millis() - start_millis);
          }
        } else if (mouseX>480 && mouseX <560 && mouseY>0 && mouseY <80) {
          detected = false;
        }
      }
    }

    if (detected == false) {
      displayimage= false;
      println("false");
      fill(255);
      text("Oppos, sorry bad lighting, please adjust your position a little bit", 200, 600);
      for (int i = 0; i < faces.length; i++) {
        detected = true;
        //println(faces[i].x + "," + faces[i].y);
        //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);

        a = createImage(faces[i].width, faces[i].height, RGB);
        a.copy(adaptive, faces[i].x, faces[i].y, faces[i].width, faces[i].height, 0, 0, faces[i].width, faces[i].height);
        xFace = faces[i].x;
        yFace = faces[i].y;
        //sliceW = faces[i].width-40;
        //sliceH = faces[i].height-40;
        //image(a, 0, 0);
        //println("8", millis() - start_millis);
        //image(video, 0, 0);
        stroke(0, 255, 0);
        //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
      }
    }

    if (displayimage) {
      //image(a, 550, 280, 120, 120);
      //println("display");
      text("Picture Taken! you may proceed to the next step", 200, 650);
    }

    popMatrix();
    if (mousePressed) {
      if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
        fill(0);
        STATE = 4;
        String subscriptionKey = "19616df5c56245bfa14dc72d600b3614";  
        GetRequest get = new GetRequest("https://api.cognitive.microsoft.com/bing/v7.0/images/search?q="+Country+"Landscape");
        get.addHeader("Ocp-Apim-Subscription-Key", subscriptionKey);
        get.send();
        JSONObject response = parseJSONObject(get.getContent());
        JSONObject firstPicture = response.getJSONArray("value").getJSONObject(0);
        String pictureUrl = firstPicture.getString("contentUrl");
        imgbg = loadImage(pictureUrl, "jpg");
        println("The mouse is pressed and over the button3");
      }

      if (mouseX>x-200 && mouseX <x+w-200 && mouseY>y && mouseY <y+h) {
        STATE = 2;
      }
    } 
    break;

  case 4:

    LeapMotion_run();
    length1 = map(finger1Y, 0, height, 20, 250);//leap motion left hand
    length2 = map(finger2Y, 0, height, 20, 250);//leap motion left leg
    length3 = map(finger3Y, 0, height, 20, 250);//leap motino body
    length4 = map(finger4Y, 0, height, 20, 250);//leap motion right leg
    length5 = map(finger5Y, 0, height, 20, 250);//leap motion right hand;
    angle1=map(length5, 20, 250, 0, 20);//control right hand;
    angle2=map(length1, 20, 250, 0, 20);//control left hand;
    angle3=map(length4, 20, 250, 0, 20);//control right leg;
    angle4=map(length4, 20, 250, 0, 20);//control left leg;
    angle5=map(length5, 20, 250, 0, 20);//control right hand;

    image(imgbg, 0, 0, 1200, 800);
    image(a, mouseX+50, mouseY+50, 80, 70);

    //delet
    //image(a, mouseX+50, mouseY+50, 80, 70);
    //image(a, 450, 450, 80, 70);


    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      println("The mouse is over the button4n");
      image(imgp, x-200, y, w, h);
      image(imgnr, x, y, w, h);
    } else if (mouseX>x-200 && mouseX <x+w-200 && mouseY>y && mouseY <y+h) {
      println("The mouse is over the button4p");
      image(imgpr, x-200, y, w, h);
      image(imgn, x, y, w, h);
    } else {
      image(imgp, x-200, y, w, h);
      image(imgn, x, y, w, h);
    }

    text("put your hand aboue the leap motion to control the puppet", 300, 30);
    if (mouseX>50 && mouseX <130 && mouseY>0 && mouseY <80) {
      //start
      image(imgstartr, 50, 0, 80, 80);
      image(imgredo, 120, 0, 80, 80);
      image(imgsave, 190, 0, 80, 80);
      text("Start Recording", 50, 100);
    } else if (mouseX>190 && mouseX <270 && mouseY>0 && mouseY <80) {
      image(imgstart, 50, 0, 80, 80);
      image(imgredo, 120, 0, 80, 80);
      image(imgsaver, 190, 0, 80, 80);
      text("Save", 210, 100);
    } else if (mouseX>120 && mouseX <190 && mouseY>0 && mouseY <80) {
      image(imgstart, 50, 0, 80, 80);
      image(imgredor, 120, 0, 80, 80);
      image(imgsave, 190, 0, 80, 80);
      text("Redo", 170, 100);
    } else {
      image(imgstart, 50, 0, 80, 80);
      image(imgredo, 120, 0, 80, 80);
      image(imgsave, 190, 0, 80, 80);
    }


    image(imgbody, mouseX, mouseY);

    //    //right arm
    //    pushMatrix();
    //    translate(finger1X+150, finger1Y+140); 
    //    fill(255, 0, 0);
    //    noStroke();
    //    rotate(radians(-angle1));
    //    imageMode(CENTER);
    //    image(imgrightarm, 0, 0);
    //    imageMode(CORNER);
    //    popMatrix();

    //    //left arm
    //    pushMatrix();
    //    translate(finger1X+5, finger1Y+130);
    //    fill(255, 0, 0);
    //    noStroke();
    //    rotate(radians(angle2));
    //    image(imgleftarm, 0, 0);
    //    popMatrix();

    //    //rightleg
    //    pushMatrix();
    //    translate(finger1X+100, finger1Y+240);
    //    fill(255, 0, 0);
    //    noStroke();
    //    rotate(radians(angle3));
    //    image(imgrightleg, 0, 0);
    //    popMatrix();

    //    //leftleg
    //    pushMatrix();
    //    translate(finger1X+55, finger1Y+245);
    //    fill(255, 0, 0);
    //    noStroke();
    //    rotate(radians(-angle4));
    //    image(imgleftleg, 0, 0);
    //    popMatrix();

    //    //rightfeet
    //    pushMatrix();
    //    translate(finger1X+110, finger1Y+260);
    //    fill(255, 0, 0);
    //    noStroke();
    //    rotate(radians(angle3));
    //    image(imgrightfeet, 0, 0);
    //    popMatrix();

    //    //leftfeet
    //    pushMatrix();
    //    translate(finger1X+40, finger1Y+270);
    //    fill(255, 0, 0);
    //    noStroke();
    //    rotate(radians(-angle4));
    //    image(imgleftfeet, 0, 0);
    //    popMatrix();

    //videoExport.saveFrame();
    //if (frameCount > round(movieFPS * soundDuration)) {
    //  videoExport.endMovie();
    //  exit();
    //} 


    if (recording) {
      text("recording", 1000, 30);
      videoRef.saveFrame();
    }
    if (mousePressed) {

      if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
        println("The mouse is pressed and over the button4");
        fill(0);
        STATE = 5;
        Path oldFile = Paths.get(sketchPath("")+"reference.mp4");
        Path newFile = Paths.get(sketchPath("")+"/data/"+Name+"reference.mp4");
        try {
          Files.copy(oldFile, newFile);
          println("videomoved");
          BGV2 = new Movie(this, Name+"reference.mp4");
        } 
        catch (IOException e) {
          println("it didnt work");
        }
      } else if (mouseX>x-200 && mouseX <x+w-200 && mouseY>y && mouseY <y+h) {
        STATE = 3;
      } else if (mouseX>50 && mouseX <130 && mouseY>0 && mouseY <80) {
        //start
        recording = !recording;
        println("Recording is " + (recording ? "ON" : "OFF"));
      } else if (mouseX>190 && mouseX <270 && mouseY>0 && mouseY <80) {
        println("video stopped");
        videoRef.endMovie();
        recording = !recording;
      } else if (mouseX>120 && mouseX <190 && mouseY>0 && mouseY <80) {
        recording = !recording;
        println("Recording is " + (recording ? "ON" : "OFF"));
      }
    }

    break;

  case 5:
    textFont(font, 30);
    //println("disaplayed");
    //background(0); 
    image(BGV2, 500, 350, 600, 400);
    BGV2.loop();
    pg.beginDraw();
    pg.image(BGV2, -50, -110);
    pg.endDraw();
    if (recording) {
      videoExport.saveFrame();
    }
    stroke(255);
    //text(Description, 5, 415);
    text("Voice Over.", 5, 55);
    text("Please do a voiceover accroding your puppet show that introduces your country to others.", 5, 95);
    for (int i = 0; i < in.bufferSize() - 1; i++)
    {
      line(i, 150 + in.left.get(i)*50, i+1, 150 + in.left.get(i+1)*50);
      line(i, 250 + in.right.get(i)*50, i+1, 250 + in.right.get(i+1)*50);
    }

    if ( recorder.isRecording() )
    {
      fill(255);
      textSize(25);
      text("Currently recording...", 5, 315);
      pushMatrix();
      fill(255);
      textSize(20);
      popMatrix();
    } else
    {
      fill(255);
      textSize(25);
      text("Not recording.", 5, 315);
      pushMatrix();
      fill(255);
      textSize(20);
      popMatrix();
    }



    if (mouseX>50 && mouseX <130 && mouseY>400 && mouseY <480) {
      //start
      image(imgstartr, 50, 400, 80, 80);
      image(imgredo, 120, 400, 80, 80);
      image(imgsave, 190, 400, 80, 80);
      text("Start Recording", 50, 500);
    } else if (mouseX>190 && mouseX <270 && mouseY>400 && mouseY <480) {
      image(imgstart, 50, 400, 80, 80);
      image(imgredo, 120, 400, 80, 80);
      image(imgsaver, 190, 400, 80, 80);
      text("Save", 210, 500);
    } else if (mouseX>120 && mouseX <200 && mouseY>400 && mouseY <480) {
      image(imgstart, 50, 400, 80, 80);
      image(imgredor, 120, 400, 80, 80);
      image(imgsave, 190, 400, 80, 80);
      text("Redo", 150, 500);
    } else {
      image(imgstart, 50, 400, 80, 80);
      image(imgredo, 120, 400, 80, 80);
      image(imgsave, 190, 400, 80, 80);
    }


    //    image(imgstart, 50, 400, 80, 80);
    //    image(imgredo, 120, 400, 80, 80);
    //    image(imgsave, 190, 400, 80, 80);

    if (mouseX>x-250 && mouseX <x+w-250 && mouseY>y-50 && mouseY <y+h-50) {
      println("The mouse is over the button5n");
      image(imgp, x-450, y-50, w, h);
      image(imgnr, x-250, y-50, w, h);
    } else if (mouseX>x-450 && mouseX <x+w-450 && mouseY>y-50 && mouseY <y+h-50) {
      println("The mouse is over the button5p");
      image(imgpr, x-450, y-50, w, h);
      image(imgn, x-250, y-50, w, h);
    } else {
      image(imgp, x-450, y-50, w, h);
      image(imgn, x-250, y-50, w, h);
    }
    if (mousePressed) {
      if (mouseX>x-250 && mouseX <x+w-250 && mouseY>y && mouseY <y+h) {
        println("The mouse is pressed and over the button5");
        fill(0);

        Path oldFile = Paths.get(sketchPath("")+"video.mp4");
        Path newFile = Paths.get(sketchPath("")+"/data/"+Name+"video.mp4");
        try {
          Files.copy(oldFile, newFile);
          println("videomoved");
          BGV3 = new Movie(this, Name+"video.mp4");
        } 
        catch (IOException e) {
          println("it didnt work");
        }

        STATE = 6;
      } else if (mouseX>x-450 && mouseX <x+w-450 && mouseY>y && mouseY <y+h) {
        STATE = 4;
      }
      if (mouseX>50 && mouseX <130 && mouseY>400 && mouseY <480) {
        recorder.beginRecord();
        recording = !recording;
        println("Video Recording is " + (recording ? "ON" : "OFF"));
        print("Audio begin record");
      }
      if (mouseX>120 && mouseX <200 && mouseY>400 && mouseY <480) {
        recorder.endRecord();
        recording = !recording;
        println("Video Recording is " + (recording ? "ON" : "OFF"));
        print("Audio end record");
      }



      if (mouseX>190 && mouseX <270 && mouseY>400 && mouseY <480) {
        print("end record");
        recording = !recording;
        recorder.endRecord();
        recorder.save();
        //counter1++;
        filename = "audio"+counter1+".wav";
        recorder = minim.createRecorder(in, filename, true);
        println("Done saving.");
        delay(5000);
        videoExport.setAudioFileName("../"+"audio"+counter1+".wav");
        println("../"+"audio"+counter1+".wav");
        delay(5000);
        videoExport.endMovie();
        Path oldFile = Paths.get(sketchPath("")+"audio"+counter1+".wav");
        Path newFile = Paths.get(sketchPath("")+"/data/"+"audio"+Name+".wav");
        try {
          Files.copy(oldFile, newFile);
          println("audiomoved");
        } 
        catch (IOException e) {
          println("audio didnt work");
        }
      }
    }
    break;

  case 6:
    image(BGV3, 575, 150, 600, 400);
    BGV3.loop();

    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      image(startoverr, x, y, w, h);
      if (mousePressed) {
        STATE=1;
      }
    } else {
      image(startover, x, y, w, h);
    }

    pushMatrix();

    fill(0);
    textFont(font, 30);
    image(textbook1, 50, 50);
    text("Your Email adress", 240, 300);

    if (mouseX >= 250 && mouseX <= 390 && 
      mouseY >= 350 && mouseY <= 380) {

      if (mousePressed) {
        currentString = 4;
        current = Email;
      }
    }


    fill(Emailc);
    rect(250, 350, 200, 30, 10);


    if (currentString == 4) {

      Email = current;
      Emailc= 250;
      fill(0);
      textSize(25);
      text(Email, 260, 370);
    }
    popMatrix();
    if (mouseX >= 250 && mouseX <= 330 && 
      mouseY >= 400 && mouseY <= 480) {
      fill(0);
      textSize(25);
      image(emailred, 250, 400);
      text("Send my video to me", 250, 500);
    } else {
      image(emailblack, 250, 400);
    }

    break;
  }
}

void movieEvent(Movie m) {
  if (m == BGV) {
    BGV.read();
  } else if (m == BGV2) {
    BGV2.read();
  } else if (m == BGV3) {
    BGV3.read();
  }
}
void captureEvent(Capture c) {
  c.read();
}

void keyPressed() {
  if (STATE == 2 || STATE == 6) {
    if (keyCode == BACKSPACE) {
      if (current.length() > 0) {
        current = current.substring(0, current.length()-1);
      }
    } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
      current = current + key;
    }
  }
}

//case1
void typewriteText() {
  if (counter < text1.length()) {
    counter++;
    text(text1.substring(0, counter), 350, 80, width/2, height/2);
  } else {
    text(text1, 350, 80, width/2, height/2);
    image(instruction, 400, 220);
  }
}
