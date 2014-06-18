final int ROWS = 80;
final int COLUMNS = 100;
  int x = 1;

PointViewController pointViewController;

void setup() {
    size (1000, 800, P3D);
    smooth();
    frameRate(60);
    pointViewController = new PointViewController(ROWS, COLUMNS);
}

void draw () {  

  
  pointViewController.draw(x);
  
  if(x < 500){ x += random(0,COLUMNS);}
  else { x = 0;}
}




