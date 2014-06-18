import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_140618a extends PApplet {

ConcentricCirclesViewController concentricCirclesViewController;

public void setup() {
    size (1000, 800, P3D);
    smooth();
    frameRate(24);
    concentricCirclesViewController = new ConcentricCirclesViewController(width/4);
}

public void draw() {
  concentricCirclesViewController.draw();
}
class CircleView {
  float x = 0;
  int c;

  CircleView(float i, int k){
    x=i;
    c =k;

  }
  
  public void draw() {
  	fill(0,0,0,0);
  	stroke(c);
    ellipse(width/2, height/2, x, x);
    
    x*=1.02f;
    if (x > width*2) x= 1;
  }
}
class ConcentricCirclesViewController {
 
  CircleView[] circleViews;
  final int num_circles;
  int[] g_colorPalette = {0xffFFD581, 0xffE8AD4F, 0xffFF9E27, 0xffE89C58, 0xffFFBB8F, };

  
  ConcentricCirclesViewController(int n){
    num_circles = n;
    circleViews = new CircleView[num_circles];
    
    for(int i = 0; i < num_circles; i++) {
      circleViews[i] = new CircleView(i, g_colorPalette[(int)random(0,5)]);
    }
  }
  
  public void draw() {
    fill(0,0,0,100);
    rect(0,0, width,height);
    for(int i = 0; i < num_circles; i++) {
      circleViews[i].draw();
    }
  }
} 
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_140618a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
