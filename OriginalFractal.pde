public void setup()
{
size(800,800);
noLoop();
}
public void draw()
{
fractal(0,0,400);

}
public void mouseDragged()//optional
{

}
public void fractal(int x, int y, float sizee) 
{  
  fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  beginShape();
  curveVertex(x*sizee,y*sizee);
  curveVertex(x*sizee,y*sizee);
  curveVertex((x-5)*sizee,(y+5)*sizee);
  curveVertex((x-10)*sizee,(y+10)*sizee);
  curveVertex(x*sizee,(y+20)*sizee);
  curveVertex(x*sizee,(y+20)*sizee);
  curveVertex(x*sizee,y*sizee);
  curveVertex(x*sizee,y*sizee);
  curveVertex((x+10)*sizee,(y+5)*sizee);
  curveVertex((x+5)*sizee,(y+10)*sizee);
  curveVertex(x*sizee,(y+20)*sizee);
  curveVertex(x*sizee,(y+20)*sizee);
  endShape(CLOSE);
  if(sizee>5)
  {
    fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
    //fractal(x,y,size/2);
    fractal((int)(x-sizee/2),(int)y,sizee/2);
    fractal((int)(x+sizee/2),(int)y,sizee/2);
    fractal((int)x,(int)(y-sizee/2),sizee/2);
    fractal((int)x,(int)(y+sizee/2),sizee/2);
  }
} 
  
  
  
