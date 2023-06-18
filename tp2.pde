// González Martina Julieta 88141/9
// https://youtu.be/ad3CHRZUPuo

PImage foto;
float tam; //TAMAÑO RECTANG

void setup() {
  size (800, 400);
  foto=loadImage("foto.jpg");
}

void draw() {
  foto.resize (400,400);
  image(foto, 0, 0);
  rectMode(CENTER); //0, 0 del medio
  translate(width/1.34, height/2); //0, 0 derecha
  
  for (int i=0; i<50; i++) {
    rotate(map(mouseX, mouseY, width, PI/2, PI/50)); //rotacion

    if ( i %2 ==0) { //2 fotogramas
      fill(0); //color negro
    } else {
      fill(255); //blanco
    }
    tam = (height)-i*8.7; //pequeño
    rect(0, 0, tam, tam);
  }
}
  void mousePressed(){
    mouseX=0;
    mouseY=0;
  }
