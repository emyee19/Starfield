Particle [] nDoc;

void setup()
{   background(255);
	size(500,500);
	nDoc = new Particle[100];
	for (int i=0; i<nDoc.length; i++)
		{
			nDoc[i] = new NormalParticle();
		}


}
void draw()
{	
	for (int i=0; i<nDoc.length; i++)
	{
		nDoc[i].move();
	nDoc[i].show();
}
	
}
class NormalParticle implements Particle
{
	double x, y, speed,size, angle;
	int shade;
	

	NormalParticle() {
	    shade =color((int)(Math.random()*5)+250,(int)(Math.random()*5)+250,(int)(Math.random()*5)+250);
		x = Math.random() * 200 + 200;
		y = Math.random() * 200 + 200;
		angle = Math.random() * 2 * Math.PI;
		speed = (Math.random() * 2) +2;
		size = Math.random() * 10 + 1;
	}

	public void move() {
		x = x + Math.cos(angle)*speed;
		y = y + Math.sin(angle)*speed;
	}

	public void show() {
		noStroke();
		fill(100,200,98);
		ellipse((float)x,(float)y,(float)size,(float)size);

	}

}
interface Particle
{
	public void move();
	public void show();
}
// class OddballParticle implements Particle 
// {  int x, y;
// 	OddballParticle(int x, int y) {
// 		myX=x;
// 		myY=y;
// 	}

   
// }
// class JumboParticle extends NormalParticle {
// 	JumboParticle() {
// 		size = 50;
// 	}
// }

