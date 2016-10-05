
Face myFace;
//2d array to hold the 20 circles & the 6 details of each circle (x position, y position, radius, r, g, b)
int[][] myCircles = new int[20][6];


void setup() {
  size(600, 600);
  background(255);
  myFace = new Face();
  //for loop to get all 20 circles the 6 random details
  for(int i=0; i<myCircles.length; i++){ 
    int radius= int(random(10, 50));
    //3 seperate random numbers for rgb as having the same number for each would be a greyscale color
    int colour= int(random(0, 255));
    int colour2= int(random(0, 255));
    int colour3= int(random(0, 255));
    //instead of (0,500) i changed it so a circle doesnt appear half off screen when they are drawn
    int xpos= int(random(25, 575));
    int ypos= int(random(25, 575));
    
    //fill up the array with the details
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
  //loop through the 2d array and draw each circle using the details in the array
  for(int i=0; i<myCircles.length; i++){
    fill(myCircles[i][3], myCircles[i][4], myCircles[i][5]);
    ellipse(myCircles[i][0], myCircles[i][1], myCircles[i][2], myCircles[i][2]);
  }
  
  
}

void keyPressed(){
  //depending on which key is pressed 5 will be added or taken from the x or y value of each circle by looping through the array and adding/subtracting 5
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