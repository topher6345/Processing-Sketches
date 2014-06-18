final int ROWS = 60;
final int COLUMNS = 80;
  int x = 1;

PointViewController pointViewController;

void setup() {
    size (800, 600, P3D);
    smooth();
    frameRate(24);
    pointViewController = new PointViewController(ROWS, COLUMNS);
}

void draw () {  

  
  pointViewController.draw(x);
  
  if(x < 500){ x += random(0,500);}
  else { x = 0;}
}




