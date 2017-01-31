public void setup()
{
	size(500, 500);
	ellipseMode(CENTER);
}
public void draw()
{
	fractal(250,250,500);

}
public void fractal(int x, int y, int siz)
{
	ellipse(x, y, siz, siz);
	if(siz <= 10){
		ellipse(x-siz/2, y, siz/2, siz/2);
	}
	else
	{	
		//left of circle
		fractal(x-siz/4, y, siz/2);
		//down of circle
		fractal(x, y+siz/4, siz/2);
		//right
		fractal(x+siz/4, y, siz/2);
		//up
		fractal(x, y-siz/4, siz/2);
	}
}