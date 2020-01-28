public void setup()
{
	size(1000, 1000);
	background(0);
	fill(255);
	noStroke();
	sierpinski(500,500,200);

}
public void draw()
{
}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, float len) 
{
	if (len > 1){  
   		triangle(x - len/2, y + len / 2, x + len/2, y + len / 2, x, y + len + len / 2);
   		triangle(x - len/2 - len / 2, y - len / 2, x + len/2 - len / 2, y - len / 2, x - len / 2, y + len - len / 2);
   		triangle(x - len/2 + len / 2, y - len / 2, x + len/2 + len / 2, y - len / 2, x + len / 2, y + len - len / 2);
   		sierpinski(x - len, y + len - len / 4 , len / 2);
   		sierpinski(x + len , y + len - len / 4 , len / 2);
   		sierpinski(x , y - len - len / 4, len / 2);
	} 
}