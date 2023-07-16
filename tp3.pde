int numImagenes = 25;
PImage[] imageness = new PImage[numImagenes];
PImage[] imagenes = new PImage[numImagenes];
float[] posX = new float[numImagenes];
float[] posY = new float[numImagenes];
float[] velX = new float[numImagenes];
float[] velY = new float[numImagenes];
PFont fuente;
int pantalla=0;
int Opacidad=255;
void setup() {
  imageMode(CENTER);
  size(600, 600);
  for (int i = 0; i < numImagenes; i++) {
    imagenes[i] = loadImage("estrella.png");
    imageness[i] = loadImage("cala.png");
    posX[i] = width / 2;
    posY[i] = height / 2;
    velX[i] = random(-3, 3);
    velY[i] = random(-3, 3);
  }
  fuente = createFont("BOSQUE.ttf", 32);
}

void draw() {
  println(pantalla);
  //println(mouseX, mouseY);
  //210, 475, 175, 75
  if (mousePressed) {
    if ((pantalla==0) &&mouseX>210 &&mouseY>500 &&mouseX<385 &&mouseY<575)
      pantalla=1;
  }

  inicio();
  historia();
  bueno();
  
}
void keyPressed() {
  if (key==' ') {
    Opacidad=255;
    pantalla=0;
    frameCount=0;
    for (int i = 0; i < numImagenes; i++) {
      posX[i] = width / 2;
      posY[i] = height / 2;
    }
  }
}
