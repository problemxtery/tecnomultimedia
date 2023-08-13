void bueno() {
    background(0);
    for (int i = 0; i < numImagenes; i++) {
      posX[i] += velX[i];
      posY[i] += velY[i];
      image(estrella[i], posX[i], posY[i]);
    }
    Opacidad-=1;
  }
  
void malo(){
background(75);
    textFont(fuente);
    textSize(30);
    fill(0);
    tint(255, 255, 255, Opacidad);
    text("Caperucita Roja, se acerco a al lobo pensando que era su abuela, pero cuando se dio cuenta, el lobo ya se abalanzo y la devoro.", 75, 175, 500, 500);
    text("Presionar 'Space' para reiniciar", 100, 400);
    for (int i = 0; i < numImagenes; i++) {
      posX[i] += velX[i];
      posY[i] += velY[i];
      image(calavera[i], posX[i], posY[i]);
    }
    Opacidad-=1;
}
  
 
