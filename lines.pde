class Line {
  float x1,y1,x2, y2;
  Line [] otherLine;
  color lineColor;
  

  Line(float x1, float y1, color lineColor) {
    this.x1 = x1;
    this.y1 = y1;
   
    this.lineColor = lineColor;
  }
  
  void display() {
    stroke(lineColor);
    point(x1, y1); 
  }
  
  void initalMovement() {
    x1 += xspeed;
    y1 += yspeed;
    
    x2 += xspeed;
    y2 += yspeed;
    
    if(x1 > width || x1 < 0 ) {
      xspeed *= -1;
    }
    if( y1 > height || y1 < 0 ) {
      yspeed *= -1;
    }
    
  }
  
}
