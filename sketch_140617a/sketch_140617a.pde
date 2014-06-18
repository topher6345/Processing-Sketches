
final int ROWS = 60;
final int COLUMNS = 80;

Point[] points;


void setup() {
    size (800, 600, P3D);
    smooth();
    
    points = new Point[ROWS * COLUMNS];
    
    for(int i=0; i < (ROWS * COLUMNS); i++) {
       points[i] = new Point(i);
    }
}

void draw () {
  background(0);
  
  int x = 0;
  
  for (int i=0; i < COLUMNS; i++){
    for(int j=0; j < ROWS ; j++){
      
      
//      ellipse(i*10 + 5,j*10 +5, 10, 10);
      
      points[x].draw(i, j, 10, random(0,255));
      
    }
  }
}


class Point {
  
  int id;
  
  Point(int i){ 
    id = i;
  };
 
 void draw(float x, 
           float y, 
           float size,
           float c){
             
   fill(c);
   ellipse( (x*size) + (size*.5), // x
            (y*size) + (size*.5), // y
                            size, // height
                           size); // width
 }
 
  
}
