class PointView {
  
  int id;
  
  PointView(int i){ 
    id = i;
  };
 
 void draw(float x, 
           float y, 
           float size,
           color c){
             
   fill(c);
   ellipse( (x*size) + (size*.5), // x
            (y*size) + (size*.5), // y
                            size, // height
                           size); // width
 } 
}
