float flowMeter = 0;
float temp = 0;
float humidty = 0;
float rest = 0;
float rest1 = 0;
Bar _temp;
Bar _humidty;
Bar2 restTime;
rounds time;

int hours = 0;
int last_hour = 0;
int countDown = 0;

PImage bg;
PImage Temp;
PImage Humidty;
PImage Flow;
PImage Time;
String saveTime[]={"0"};
String loadTime[];



import processing.serial.*; 
Serial myPort;

void setup(){
 fullScreen();
 pixelDensity(displayDensity());
// size(1000,600);
   println(Serial.list());
   myPort = new Serial(this, "/dev/ttyACM0", 9600);
   myPort.bufferUntil('\n');
   
bg = loadImage("bg2.jpg");
Flow = loadImage("wind.png");
Humidty = loadImage("drop.png"); 
Temp = loadImage("thermometer.png");
Time = loadImage("clockwise.png");

last_hour = hour();

loadTime = loadStrings("time.txt");
//println(loadTime[0]);
countDown = int(loadTime[0]);
}

void draw(){
  image(bg,0,0,width,height);
 //background(26,82,118);
 image(Flow,width*0.1,height*0.1,Flow.width*0.3, Flow.height*0.3);
 fill(255);textSize(30);
 text("AOP Flow",width*0.1+50,height*0.08+160);
 
 image(Humidty,width*0.5-32,height*0.1,Humidty.width*0.3, Humidty.height*0.3);
 fill(255);textSize(30);
 text("Humidty",width*0.5+22,height*0.08+160);
 
 
 image(Temp,width*0.8,height*0.1,Humidty.width*0.3, Humidty.height*0.3);
 fill(255);textSize(30);
 text("Temperature",width*0.8+50,height*0.08+160);
 
 image(Time,width*0.5-20,height*0.5,Humidty.width*0.25, Humidty.height*0.25);
 
  textSize(22);
   hours = hour();
 // hours = second();
  if(last_hour != hours){
    countDown +=1;
    last_hour = hours;
    saveTime[0] = str(countDown);
    saveStrings("time.txt",saveTime);
  }
 
 
  restTime = new Bar2("Hour Count",width*0.02,height*0.67,25,0,10000,50,countDown);
  restTime.onScreen();

  textSize(height*0.1);fill(0,200,170);
  text(int(flowMeter),width*0.1,height*0.4);
  textSize(height*0.05);
  text("  L/min",width*0.1+100,height*0.4);
  
  fill(180,10,180);textSize(height*0.1);
  text(int(humidty)+"%",width*0.5,height*0.4);
  textSize(height*0.05);
  text("RH",width*0.5+((height*0.13)),height*0.4);
  
  
  
  
   fill(10,160,10);textSize(height*0.1);
  text(int(temp),width*0.84,height*0.5);//+"óC"
  text("c",width*0.93,height*0.4);
  stroke(10,160,10);
  noFill();strokeWeight(3); ellipse(width*0.9,height*0.35,15,15);
  
  
 
 
  if(rest == 1){
    countDown = 0;
    saveTime[0] = str(countDown);
    saveStrings("time.txt",saveTime);
  }

}

void serialEvent(Serial myPort) { 
 // get the ASCII string:
 String inString = myPort.readStringUntil('\n');
 
 if (inString != null) {
 // trim off any whitespace:
 inString = trim(inString);
 
 // split the string on the commas and convert the 
 // resulting substrings into an integer array:
 float[] inByte = float(split(inString, ","));

 // if the array has at least three elements, you know
 // you got the whole thing.  Put the numbers in the
 // color variables:

 if (inByte.length >= 4) {
 // map them to the range 0-255:
 temp = inByte[0];
 humidty = inByte[1];
 flowMeter = inByte[2];
 rest = inByte[3];
 rest1 = inByte[4];
 
  
 }
 }
 }
 
 void mousePressed(){
   save("gui2.jpg");
   
 }
