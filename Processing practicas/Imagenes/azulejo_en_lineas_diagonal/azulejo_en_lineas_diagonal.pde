int numCells= 8;
float sizeCell;
void setup() {
  size(800, 800);
  sizeCell = width / numCells;
}


void draw() {
  background(255);
  for (int i = 0; i<numCells; i++) {
    for (int j = 0; j<numCells; j++) {
     // noStroke();
      cell(i, j);
    }
  }
  noLoop();
}


void cell (int i, int j) {
  if (random(1.0)< 0.5) {
    tileA(i, j);
  } else {
    tileB(i, j);
  }
}

void tileA (int i, int j) {
  float x = i * sizeCell;
  float y = j * sizeCell;

  fill(0);
  beginShape();
  vertex(x, y);
  vertex(x+sizeCell, y);
  vertex(x, y+sizeCell);
  endShape(CLOSE);
}

void tileB (int i, int j) {
  float x = i * sizeCell;
  float y = j * sizeCell;

  fill(0);
  beginShape();
  vertex(x+sizeCell, y);
  vertex(x, y+sizeCell);
  vertex(x +sizeCell, y+sizeCell);
  endShape(CLOSE);
}
void mouseClicked() {
  redraw();
}
