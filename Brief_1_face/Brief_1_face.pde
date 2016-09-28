
Face myFace;
float[][] myCircles = new float[20][4];


void setup() {
  size(600, 600);
  background(255);
  myFace = new Face();
  for(int i=0; i<myCircles.length; i++){ 
    float r= random(10, 50);
    float c= random(0, 255);
    float x= random(0, 600);
    float y= random(0, 600);
    int radius = int(r);
    int colour = int(c);
    int xpos = int(x);
    int ypos = int(y);
    myCircles[i][0] =  xpos;
    myCircles[i][1] =  ypos;
    myCircles[i][2] =  radius;
    myCircles[i][3] =  colour;
  }
}

void draw() {
  background(255);
  myFace.paint(mouseX,mouseY);//pass in x and y position of mouse to draw new face
  for(int i=0; i<myCircles.length; i++){
    fill(myCircles[i][3], myCircles[i][3], myCircles[i][3]);
    ellipse(myCircles[i][0], myCircles[i][1], myCircles[i][2], myCircles[i][2]);
  }
}