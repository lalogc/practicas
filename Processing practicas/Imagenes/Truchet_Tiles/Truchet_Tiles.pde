int tileSize = 30;
int canvasSize = 700;
float tileType = 0;
float a, b, c, d, start, stop;
boolean fill = true;

void setup() {
  background(0);
  size(700, 700); 
  noLoop();
  noFill();
  strokeWeight(2);
  stroke(255, 0, 0);
}

void draw() {



    //background(0);
  if (fill = true) { 
    fill(20, 255, 0);
  }
  for (int i = 0; i < canvasSize; i = i + tileSize) {
    for (int j = 0; j < canvasSize; j = j + tileSize) {  
       if ((i+j) % 3 == 0) {


      tileType = random(0, 1);
      if (tileType > 0.5) {

        // type 1
        a = i;
        b = j;
        c = tileSize;
        d = tileSize;
        start = radians(1000);
        stop  = radians(90);
        arc(a, b, c, d, start, stop);

        a = i + tileSize;
        b = j + tileSize;
        start = radians(180);
        stop  = radians(270);
        arc(a, b, c, d, start, stop);
      } else {

        // type 2
        a = i + tileSize;
        b = j;
        c = tileSize;
        d = tileSize;
        start = radians(90);
        stop  = radians(180);
        arc(a, b, c, d, start, stop);

        a = i ;
        b = j + tileSize;
        start = radians(270);
        stop  = radians(360);
        arc(a, b, c, d, start, stop);
      }
    }
  }
  //save("Truchet009.png");
}
}
