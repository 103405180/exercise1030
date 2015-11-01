PImage sun ;
PImage earth ;
PImage moon ;
float degree=0;

void setup (){
  
  size(600,600);
  sun = loadImage("sun.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");

}
void draw(){
  background(0);
  imageMode(CENTER);
  image(sun,300,300);
  
  ellipse(300,300,300,300);
  stroke(0);
  noFill();
  
  pushMatrix();
  float a = map(mouseX,0,width,-PI,PI);
  float eX=300+150*cos(degrees(a));
  float eY=300+150*sin(degrees(a));
  image(earth,eX,eY);
  popMatrix();
  
  degree=(degree+1)%360;
  ellipse(eX,eY,100,100);
  float mX=eX+50*cos(radians(degree));
  float mY=eY+50*sin(radians(degree));
  image(moon,mX,mY);
}
