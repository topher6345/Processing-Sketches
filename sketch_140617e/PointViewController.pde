class PointViewController {
  
  int _columns;
  int _rows;
  PointView[] pointViews;
  
//  color[] colors = {#00A4CC, #00F224, #FFD33E, #FF5241, #A600CC };
  color[] colors = {#08E8FF, #85E8DC, #95FFDB, #38E886, #52FF79 };

  PointViewController(int columns, int rows) {
     _columns = columns;
     _rows = rows;
     
     pointViews = new PointView[rows * columns];
      
     for(int i=0; i < (ROWS * COLUMNS); i++) {
       pointViews[i] = new PointView(i);
     }
     
     


   } 
 
  void draw(float mod) { 
    
    fill(0,0,0, 10);
    rect(0, 0, width, height);
    
    
    int x = 0;
    color c;
     for (int i=0; i < COLUMNS; i++){ for(int j=0; j < ROWS ; j++){   
     
        boolean draw = pointViews[x].id % mod == 0;
        
        if ( draw ) {c = colors[(int)random(5)];}
        else {
          c = color(0,0,0,10);
        }
        pointViews[x].draw(i, j, 10, c);
        x++;
        
     }} 
  }
  
  
}
