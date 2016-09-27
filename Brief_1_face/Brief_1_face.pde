
Face myFace;

void setup() {
  size(600, 600);
  background(255);
  myFace = new Face();
}

void draw() {
  background(255);
  myFace.paint();
}



class Face {

  void paint() {
    //set fill color for face
    fill(0,0,255);
    
    //main face
    ellipse(50, 50, 100, 100);
    //set no fill for the arc that will be the mouth
    noFill();
    arc(50, 50, 50, 50, 0, PI);
    //fill color and the two eyes
    fill(0);
    ellipse(30, 30, 10, 10);
    ellipse(70, 30, 10, 10);
  }
}