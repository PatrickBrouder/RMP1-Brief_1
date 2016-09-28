
Face myFace;
int[][] myCircles = new int[20][6];


void setup() {
  size(600, 600);
  background(255);
  myFace = new Face();
  for(int i=0; i<myCircles.length; i++){ 
    int radius= int(random(10, 50));
    int colour= int(random(0, 255));
    int colour2= int(random(0, 255));
    int colour3= int(random(0, 255));
    int xpos= int(random(25, 575));
    int ypos= int(random(25, 575));
    
    myCircles[i][0] =  xpos;
    myCircles[i][1] =  ypos;
    myCircles[i][2] =  radius;
    myCircles[i][3] =  colour;
    myCircles[i][4] =  colour2;
    myCircles[i][5] =  colour3;
  }
}

void draw() {
  background(255, 255, 255);
  myFace.paint(mouseX,mouseY);//pass in x and y position of mouse to draw new face
  for(int i=0; i<myCircles.length; i++){
    fill(myCircles[i][3], myCircles[i][4], myCircles[i][5]);
    ellipse(myCircles[i][0], myCircles[i][1], myCircles[i][2], myCircles[i][2]);
  }
  
  
}

void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      for(int i=0; i<myCircles.length; i++){
         myCircles[i][1] -= 5;        
      }
    } else if (keyCode == DOWN) {
      for(int i=0; i<myCircles.length; i++){
         myCircles[i][1] += 5;
      }
    } else if (keyCode == LEFT) {
      for(int i=0; i<myCircles.length; i++){
         myCircles[i][0] -= 5;
      }
    } else if (keyCode == RIGHT) {
      for(int i=0; i<myCircles.length; i++){
         myCircles[i][0] += 5;
      }
    }
  }
}