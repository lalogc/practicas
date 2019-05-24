int step, i = 0, num = 200;
float theta;

void setup() {
  size(500, 500);

  step = height/num;
}

void draw() {
  background(20);
  fill(#79F0FF);
  noStroke();
  ellipse(width/2, height/2, width*.6, height*.6);
  i=0;
  for (int y = 1 * step; y < height* step; y += step) {
    float sw = map(sin(theta+(TWO_PI/num*i)), -1, 1, 1.2, 2);
    float edge = 8*step;
    stroke(20);
    strokeWeight(sw);
    line(edge, y, width-edge, y);
    i++;
  }
  theta += .00523;

  //if (frameCount%1==0 && frameCount<121) saveFrame("image-###.gif");
}
