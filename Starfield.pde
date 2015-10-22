Particle [] nDoc;

void setup()
{   background(255);
	size(500,500);
	nDoc = new Particle[1000];
	for (int i=0; i<nDoc.length; i++)
		{
			nDoc[i] = new NormalParticle();
		}
		nDoc[998] = new JumboParticle();
		nDoc[999] = new OddballParticle();


}
void draw()
{	background(255);
	for (int i=0; i<nDoc.length; i++)
	{
		nDoc[i].move();
		nDoc[i].show();
}
	
}


class NormalParticle implements Particle
{
	double x, y, speed,mySize, angle;
	int shade;
	

	NormalParticle() {
	    shade =color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		x = Math.random() * 250 + 150;
		y = Math.random() * 250 + 150;
		angle = Math.random() * 100 * Math.PI;
		speed = (Math.random() * 3) +3;
		mySize = Math.random() * 10 + 1;
	}

	public void move() {
		x = x + Math.cos(angle)*speed;
		y = y + Math.sin(angle)*speed;
		angle+=0.03;
	}

	public void show() {
		noStroke();
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		ellipse((float)x,(float)y,(float)mySize,(float)mySize);

	}

}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle 
{   double x, y, speed,mySize, angle;
	int shade;
	{ 	x = ((int)Math.random() * 500) +(int)(Math.random()*3)-1;
		y = ((int)Math.random() * 500) +(int)(Math.random()*3)-1;
		angle = Math.random() * 100 * Math.PI;
		speed = Math.random();
		mySize = 6;
		
	}

	public void move() {
		y=mouseY+15;
		x=mouseX-20;
	}

	public void show() {
		noStroke();
		fill(0);
		ellipse((int)(Math.random()*500),(int)(Math.random()*500),20,20);	
  	}
}
class JumboParticle extends NormalParticle 
{
	JumboParticle() {
		mySize=50;
	}

}

