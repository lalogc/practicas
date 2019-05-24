float a = 0;
float b = 0;
float c = 0;

void setup() {

  size(1000, 1000);
}


void draw() {

  background(0);
  float n = 100;
  float s = height / n;


  strokeWeight(2);
  stroke(255);
  noFill();
  for (int y=0; y<n; y++) {
    float sine = sin (a+(y*.050));
    sine = map (sine, -1, 1, 0, width);
    ellipse (0, y*s, sine, y*s);
  }
  stroke(255);
  for (int x=0; x<n; x++) {
    float sine2 = sin (b+(x*-.050));
    sine2 = map (sine2, -1, 1, 0, width);
    ellipse (1000, x*s, sine2, x*s);
  }
  a += 0.05;
  b += 0.05;
}
