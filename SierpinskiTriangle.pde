 int x = 200;
 int y = 200;
 int len = 200;
 public void setup()
{
  background(0);
  size(400,400);
}
public void draw()
{
  sierpinski(0,400,400);
}
public void mouseClicked()//optional
{ 
 sierpinski(0,y,len);
 x = x/2;
 y = y/2;
 len = len/2;
}
public void sierpinski(int x, int y, int len) 
{
 if (len<=10){
   fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   triangle(x,y,x+(len/2),y-len,x+len,y); 
  } else {
   sierpinski(x,y,len/2);  
   sierpinski(x+(len/2),y,len/2); 
   sierpinski(x+(len/4),y-(len/2),len/2); 
  }
}
