class Face {

  void paint(int x, int y) {
    //set fill color for face
    fill(0,0,255);
    
    //main face, drawn at x & y position of mouse
    ellipse(x, y, 100, 100);
    //set no fill for the arc that will be the mouth
    noFill();
    //arc drawn at x & y position of mouse
    arc(x, y, 50, 50, 0, PI);
    //fill color and the two eyes
    fill(0);
    // both eyes have values added/subtracted from the x and y position of the mouse to position them correctly
    ellipse(x-20, y-20, 10, 10);
    ellipse(x+20, y-20, 10, 10);
  }
}