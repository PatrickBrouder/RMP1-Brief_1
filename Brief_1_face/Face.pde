class Face {

  void paint(int x, int y) {
    //set fill color & stroke weight for face
    fill(255,255,0);
    strokeWeight(5);
    //main face, drawn at x & y position of mouse
    ellipse(x, y, 100, 100);
    //set no fill for the arc that will be the mouth
    fill(255);
    //arc drawn at x & y position of mouse
    arc(x, y, 50, 50, 0, PI, CHORD);
    
    //fill color and the two eyes
    fill(255);
    
    // both eyes have values added/subtracted from the x and y position of the mouse to position them correctly
    ellipse(x-20, y-20, 15, 15);
    ellipse(x+20, y-20, 15, 15);
    //reset the stroke weight
    strokeWeight(1);
  }
}