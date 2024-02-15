public void setup(){
 size(500,500);
 rectMode(CENTER);
}
public void draw(){
 background(0);
 myFractal(250,250,250);
 
}
public void myFractal(int x, int y, int size){
  stroke(x,y,255);
  
  rect(x,y,size,size);
  if(size > 15){
    fill(x+10,y+10,0);
   myFractal(x-size/2,y,size/2);
   myFractal(x+size/2,y,size/2);
   myFractal(x, y-size/2, size/2);
   myFractal(x,y+size/2,size/2);
   if(size > 20){
   fill(x,y+10,255);
   myFractal(x-size/3,y,size/3);
   myFractal(x+size/3,y,size/3);
   myFractal(x, y-size/3, size/3);
   myFractal(x,y+size/3,size/3);
   }
  }
}
