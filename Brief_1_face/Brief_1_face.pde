
Face myFace;

void setup() {
  size(600, 600);
  background(255);
  myFace = new Face();
}

void draw() {
  background(255);
  myFace.paint(mouseX,mouseY);//pass in x and y position of mouse to draw new face
}