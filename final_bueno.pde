void bueno() {
  if (pantalla==2) {
    background(0);
    fill(255);
    textFont(fuente);
    textSize(30);
    tint(255, 255, 255, Opacidad);
    text("Caperucita Roja llego bien a la\n casa de su abuela.", 100, 275, 400, 500);
 text("Presionar 'Space' para reiniciar",100,400);
    for (int i = 0; i < numImagenes; i++) {
      posX[i] += velX[i];
      posY[i] += velY[i];
      image(imagenes[i], posX[i], posY[i]);
    }
    Opacidad-=1;
  }

if (pantalla==7) {
    background(0);
    fill(255);
    textFont(fuente);
    textSize(30);
    tint(255, 255, 255, Opacidad);
    text("Caperucita grita fuerte, alerta a unos leñadores que estaban cerca y la rescatan.", 100, 225, 400, 500);
 text("Presionar 'Space' para reiniciar",100,425);
    for (int i = 0; i < numImagenes; i++) {
      posX[i] += velX[i];
      posY[i] += velY[i];
      image(imagenes[i], posX[i], posY[i]);
    }
    Opacidad-=1;
  }
  if (pantalla==8) {
    background(0);
    fill(255);
    textFont(fuente);
    textSize(30);
    tint(255, 255, 255, Opacidad);
    text("Caperucita Roja llega primero y cierra con llave la puerta porque se dio cuenta de su error.", 100, 225, 400, 500);
 text("Presionar 'Space' para reiniciar",100,425);
    for (int i = 0; i < numImagenes; i++) {
      posX[i] += velX[i];
      posY[i] += velY[i];
      image(imagenes[i], posX[i], posY[i]);
    }
    Opacidad-=1;
  }
}
