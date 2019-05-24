float angle = 0;

void setup () {
  size(1000, 1000);
  noStroke();
}

void draw () {
  background(255);

  drawCircle(500, 500, 500, 5);
}


void drawCircle (int x, int y, int radius, int depth) {
  if (depth > 0) {
    noFill ();
    stroke(0);
    ellipse(x, y, radius * 2, radius * 2);

    drawCircle (x + radius, y, radius / 2, depth - 1);
    drawCircle (x - radius, y, radius / 2, depth - 1);
    drawCircle (x, y - radius, radius / 2, depth -1);
    drawCircle (x, y + radius, radius / 2, depth -1);
  }
}