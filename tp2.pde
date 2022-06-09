//Gonzalez Martina Julieta 88141/3


void setup() {
  size (600, 600);
  rectMode (CENTER);
}

void draw () {
  translate (width/2, height/2);// cambia el lienzo al centro
  background (150);

  for (int i=0; i<120; i++) {
    rotate (map(mouseX, 0, width, PI/1, PI/30));
    if (i%2 == 0) {
      fill(0);
    } else fill (255);
    float tam=width/1 - i*5;
    rect (0, 0, tam, tam);
  }
}
