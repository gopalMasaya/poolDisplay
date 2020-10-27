class Bar2{
  
float xpos;
float ypos;
float Val ;
float valInt;
float Min,Max;
float w;
float level;
String name;
  
  Bar2( String name,float xpos, float ypos, float val,float min,float max,float w,float level){
   this.xpos = xpos;
   this.ypos = ypos;
   this.Val =  val;
   this.Min = min;
   this.Max = max;
   this.valInt = 0;
   this.w= w;
   this.level = level;
   this.name = name;
    
  }
  void onScreen(){
   fill(192,192,192);
   rect(this.xpos- 5,this.ypos,this.Max/10,this.w,10);
   
   this.valInt = map(this.level,0,this.Max,0,this.Val);
   noStroke();
 
 // rectMode(CENTER);
  fill(20,200,20);//stroke(26,82,118);
  rect(this.xpos-5,this.ypos,this.level/10,this.w);
  float b = map(mouseX,0,width,0,255);
   float g = map(mouseY,0,height,0,255);
   println(b+"  "+g);
   
 noFill();strokeWeight(8);stroke(0,42,82);//stroke(26,82,118);
   rect(this.xpos- 5,this.ypos,this.Max/10,this.w,10);
    
   
   fill(192,192,192);
   textAlign(CENTER);
  // textSize(18);
  //text(int(this.Min),xpos+(this.w+20),this.ypos+15);
  //if(this.Max< 1000){
  //text(int(this.Max),xpos+(this.w+30),this.ypos-(this.Val* 10)+10);
  //}
  //else{text(int(this.Max),xpos+(this.w+50),this.ypos-(this.Val* 10)+10);}
  
  
 
  textSize(28);fill(0,0,150);
  text(int(this.level),xpos+ (this.Max/10)/2,this.ypos+(this.w/2)+10);
  
  
  textSize(28);fill(255);
  text(this.name,this.xpos+ (this.Max/10)/2,this.ypos-25);
  
  
  
  }
  
  
}
