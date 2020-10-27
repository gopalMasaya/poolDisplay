class rounds{
 float points;
 float r;
 float val;
 float ref;
 float level;
 float xpos;
 float ypos;
 String name;
 
 
 rounds(String name, float xpos,float ypos,float points,float r,float val,float ref,float level){
  this.name = name;
  this.xpos = xpos;
  this.ypos = ypos;
  this.points = points;
  this.r = r;
  this.val = val;
  this.ref = ref;
  this.level = level;
  
  
  }
 
   void display(){
     
   this.val = map(this.level, 0, this.ref, 0, TWO_PI);
//println(this.level);
noFill();stroke(21,120,250);
translate(this.xpos,this.ypos);
ellipse(0,0,this.r*2,this.r*2);
  for(int i= 0; i< this.points;i++){
  float angle = map(i,0,this.points,0,this.val);
  float x = this.r*cos(angle);
  float y = this.r* sin(angle);
  noStroke(); fill(20,160,120);
  ellipse(x,y,6,6);
  fill(255,60);
 // ellipse(x-8,y-8,2,2);
  stroke(27,19,200);noFill();
  
  fill(255,255,255,10);textSize(24);textAlign(CENTER);
  text(int(this.level),this.xpos-(this.r+12),this.ypos-(this.r));
  textAlign(CENTER);textSize(16);
  text("hours",this.xpos-(this.r)-12,this.ypos-(this.r)+25);
  
  }
    
     
   
 }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
