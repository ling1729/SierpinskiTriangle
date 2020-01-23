public void setup()
{
	size(500, 500);
	background(0);
	fill(255);
	noStroke();
	sierpinski(500,500,600);

}
public void draw()
{
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20){  
   		triangle(x - len / 2, y - len / 2, x, y + len / 2, x + len / 2, y - len / 2);
	} else {
		sierpinski(x, y, len/2);
	}
}