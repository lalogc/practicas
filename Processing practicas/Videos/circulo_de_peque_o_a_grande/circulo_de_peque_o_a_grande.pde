float a = 0;



void setup() {

  size(700, 700);
}

void draw () {

  background(0);

  float n = 8;
  float m = 8;
  float s = height / n ;
  float d = width / m;

  ellipseMode(CENTER);
  stroke(255);
  fill(0);
  for (int y=0; y<n; y++) {
    for (int x=0; x<m; x++) {
      if ((y+x) % 2 == 0) {

        float x1 = y*s;
        float y1 = x*d;
        float sine = sin (a+(y*0.9)); 
        sine = map (sine, 0, 1, 2, 3);
        ellipse(x1+(s/2), y1+(d/2), sine*30, sine*30);
      }
      a += 0.1;
    }
  }
}
