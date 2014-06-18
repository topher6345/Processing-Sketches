class ConcentricCirclesViewController {
 
  CircleView[] circleViews;
  final int num_circles;
  color[] g_colorPalette = {#FFD581, #E8AD4F, #FF9E27, #E89C58, #FFBB8F, };

  
  ConcentricCirclesViewController(int n){
    num_circles = n;
    circleViews = new CircleView[num_circles];
    
    for(int i = 0; i < num_circles; i++) {
      circleViews[i] = new CircleView(i, g_colorPalette[(int)random(0,5)]);
    }
  }
  
  void draw() {
    fill(0,0,0,100);
    rect(0,0, width,height);
    for(int i = 0; i < num_circles; i++) {
      circleViews[i].draw();
    }
  }
} 