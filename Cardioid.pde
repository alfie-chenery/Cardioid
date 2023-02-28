int points = 90;
float factor = 2;
int r;
float angle = TWO_PI/points;
float speed = 0;//0.01;

void setup(){
  size(800,800);
  r = (width/2)-10;
  
  stroke(255);
  noFill();
}

void draw(){
  background(0);
  translate(width/2,height/2);
  strokeWeight(1);
  circle(0,0,r*2);
  textAlign(LEFT,TOP);
  textSize(20);
  text("Factor = "+factor,(width/2)-147,(height/2)-30);
  
  for (int i = 0; i < points; i++){
    float x = r*cos(i*angle);
    float y = r*sin(i*angle);
    strokeWeight(5);
    point(x,y);
    
    float a = i;
    float b = (i * factor) % points;
    float ax = r*cos(a*angle);
    float ay = r*sin(a*angle);
    float bx = r*cos(b*angle);
    float by = r*sin(b*angle);
    strokeWeight(1);
    line(ax,ay,bx,by);
  }
  factor += speed;
}
