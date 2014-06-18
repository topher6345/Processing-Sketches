class CircleView {
  float x = 0;
  color c;

  CircleView(float i, color k){
    x=i;
    c =k;

  }
  
  void draw() {
  	fill(0,0,0,0);
  	stroke(c);
    ellipse(width/2, height/2, x, x);
    
    x*=1.02;
    if (x > width*2) x= 1;
  }
}