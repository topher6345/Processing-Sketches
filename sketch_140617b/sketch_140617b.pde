final int ROWS = 60;
final int COLUMNS = 80;

PointViewController pointViewController;

void setup() {
    size (800, 600, P3D);
    smooth();
    frameRate(24);
    pointViewController = new PointViewController(ROWS, COLUMNS);
}

void draw () {
  background(0);
  
  int x = 0;
  pointViewController.draw();
  
}




