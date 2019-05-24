int circle = 800;
float rot, col, r;
float freq = 0.0000009; 
int cont = 0;
float numCircle = 700; 


void setup() {
  size(600, 600);
  
}

void draw() {
  background(255);
  translate(300, 300);
  rotate(radians(rot));

  ellipseMode(RADIUS);
  for (float i=0; i<numCircle; i ++) {
    float circle = 100 + 100 * cos (millis()*freq*i);
    float col = map(circle, 255, 100, 0, 250);
    float r = map(circle, 150, 250, 5, 20);
    fill(col, 0, 25);
    noStroke();
    ellipse(circle*cos(i), circle*sin(i), r, r);    
    rot =rot +0.0000009;
  }
  //saveFrame("frames/###.tiff");
}
