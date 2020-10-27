class Bar{
  
float xpos;
float ypos;
float Val ;
float valInt;
float Min,Max;
float w;
float level;
String name;
  
  Bar( String name,float xpos, float ypos, float val,float min,float max,float w,float level){
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
   noFill();stroke(192,192,192);
   rect(xpos- 5,ypos-(this.Val* 10),this.w+10,this.Val*10+8);
   
   this.valInt = map(this.level,0,this.Max,0,this.Val);
   noStroke();
  for(int i = 0; i< this.valInt;i++){
  if(i < this.Val*0.75){fill(10,180,120);}
  if(i > this.Val*0.75 && i < this.Val*0.88){fill(180,120,10);}
   if(i > this.Val*0.88){fill(200,10,10);}
  
  
  
  rect(this.xpos,this.ypos-(i*10),this.w,7,10);
  
 
    
  } 
   fill(192,192,192);
   textAlign(CENTER);
   textSize(18);
  text(int(this.Min),xpos+(this.w+20),this.ypos+15);
  if(this.Max< 1000){
  text(int(this.Max),xpos+(this.w+30),this.ypos-(this.Val* 10)+10);
  }
  else{text(int(this.Max),xpos+(this.w+50),this.ypos-(this.Val* 10)+10);}
  
  
  textSize(16);
  if(this.level < 100){
  text(nfc(this.level,1),xpos+ (this.w*2)-5,this.ypos - (this.valInt*8));
  }
  else if(this.level > 100){
  text(nfc(this.level,1),xpos+ (this.w*2)+5,this.ypos - (this.valInt*8));
  }
  
  
  text(this.name,this.xpos+ (this.w/2),this.ypos+30);
  
  
  
  }
  
  
}
