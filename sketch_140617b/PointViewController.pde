class PointViewController {
  
  int _columns;
  int _rows;
  PointView[] pointViews;

  PointViewController(int columns, int rows) {
     _columns = columns;
     _rows = rows;
     
     pointViews = new PointView[rows * columns];
      
     for(int i=0; i < (ROWS * COLUMNS); i++) {
       pointViews[i] = new PointView(i);
     }
   } 
 
  void draw() { 
    int x = 0;
    int c = 0;
     for (int i=0; i < COLUMNS; i++){ for(int j=0; j < ROWS ; j++){   
     
       
        if ( pointViews[x].id % 9 == 0) {c = 255;}
        else {
          c = 0;
        }
        pointViews[x].draw(i, j, 10, c);
        x++;
        
     }} 
  }
  
  
}
