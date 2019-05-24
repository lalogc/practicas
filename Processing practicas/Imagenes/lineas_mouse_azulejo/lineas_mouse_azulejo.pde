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

arc ( x , y, sizeCell, sizeCell, 0, HALF_PI);
arc ( x + sizeCell , y + sizeCell, sizeCell, sizeCell, PI, 3 * HALF_PI);
}

void tileB (int i, int j) {
  float x = i * sizeCell;
  float y = j * sizeCell;

arc ( x , y + sizeCell, sizeCell, sizeCell, 3 * HALF_PI, TWO_PI);
fill(random(50,200));
arc ( x + sizeCell , y , sizeCell, sizeCell, HALF_PI, PI);
}
void mouseClicked() {
  redraw();
}
