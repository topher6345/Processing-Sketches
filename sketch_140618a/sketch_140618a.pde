ConcentricCirclesViewController concentricCirclesViewController;

void setup() {
    size (1000, 800, P3D);
    smooth();
    frameRate(24);
    concentricCirclesViewController = new ConcentricCirclesViewController(width/4);
}

void draw() {
  concentricCirclesViewController.draw();
}