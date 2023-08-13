//González, Martina Julieta 88141/9
//https://youtu.be/fTFUgGJvB_U


int numImagenes = 25;
color c;
PImage[] calavera = new PImage[numImagenes];
PImage[] estrella = new PImage[numImagenes];
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
    estrella[i] = loadImage("estrella.png");
    calavera[i] = loadImage("cala.png");
    posX[i] = width / 2;
    posY[i] = height / 2;
    velX[i] = random(-3, 3);
    velY[i] = random(-3, 3);
  }
  fuente = createFont("BOSQUE.ttf", 32);
  colores();
}

void draw() {
  println(pantalla);
  //println(mouseX, mouseY);
  if (mousePressed) {
    if ((pantalla==0) &&mouseX>210 &&mouseY>500 &&mouseX<385 &&mouseY<575)
      pantalla=1;
  }
  inicio();
  historia();
  //bueno(); 
}
void colores(){
 c = ColorAleatorio();
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
    colores();
  }
}
