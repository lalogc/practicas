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
    float sine = sin (a+(y*1.50));
    sine = map (sine, 1, -3, 0, width);
    line (0, y*s, sine, y*s);
  }
  stroke(255);
  for (int x=0; x<n; x++) {
    float sine2 = sin (b+(x*-1.090));
    sine2 = map (sine2, -3, 1, 0, width);
    line (1000, x*s, sine2, x*s);
  }

  stroke(255);
  fill(0, 255);
  for (int z=0; z<n; z++) {
    float sine2 = sin (c+(z*-0.09));
    sine2 = map (sine2, 1, 0, height/8, width/3);
    ellipse (500, z*s, sine2, z*s);
  }
  a += 0.02;
  b += 0.02;
  c += 0.05;
}
