void historia() {
  if (pantalla==1) {
    background(75);
    textFont(fuente);
    textSize(20);
    fill(0);
    text("Caperucita iba caminando feliz sin ningura preocupacion, hasta que debe elegir que camino seguir.\n¿Que camino elige Caperucita?\nA: Sigue el camino largo como le dijo su mamá para que llegue sana y salva.\nB: Elije el camino corto que esta lleno de flores y además llegara mas rapido.", 25, 25, 500, 400);
    fill(255);
    rect(100, 525, 100, 50);
    fill(0);
    text("A", 140, 560);
    fill(255);
    rect(400, 525, 100, 50);
    fill(0);
    text("B", 440, 560);
    if (mousePressed) {
      if ((pantalla==1) &&mouseX>100 &&mouseY>525 &&mouseX<200 &&mouseY<575) {
        pantalla=2;
      }
      if ((pantalla==1) &&mouseX>400 &&mouseY>525 &&mouseX<500 &&mouseY<575) {
        pantalla=3;
      }
    }
  }
  if (pantalla==2) {
    bueno();
    fill(255);
    textFont(fuente);
    textSize(30);
    tint(255, 255, 255, Opacidad);
    text("Caperucita Roja llego bien a la\n casa de su abuela.", 100, 275, 400, 500);
 text("Presionar 'Space' para reiniciar",100,400);
  }
  if (pantalla==3) {
    background(75);
    textFont(fuente);
    textSize(20);
    fill(0);
    text("Caperucita va por el camino corto y se cruza con el lobo.\n¿Decide hablar con el lobo?\nA: Si, le dice que va a lo de la abuelita, pero primero va a juntar flores.\nB: No, se asusta y sale corriendo.", 50, 50, 500, 500);
    fill(255);
    rect(100, 250, 100, 50);
    fill(0);
    text("A", 140, 285);
    fill(255);
    rect(400, 250, 100, 50);
    fill(0);
    text("B", 440, 285);
    if (mousePressed) {
      if ((pantalla==3) &&mouseX>100 &&mouseY>250 &&mouseX<200 &&mouseY<300) {
        pantalla=4;
      }
      if ((pantalla==3) &&mouseX>400 &&mouseY>250 &&mouseX<500 &&mouseY<300) {
        pantalla=2;
      }
    }
  }
  if (pantalla==4) {
    background(75);
    textFont(fuente);
    textSize(20);
    fill(0);
    text("El lobo con esa informacion arma un plan, pero para lograr su plan tiene que llegar a la casa de la abuela primero.\n¿Quien llega primero?\nA: Caperucita llega primero.\nB: El lobo llega primero.", 50, 50, 500, 500);
    fill(255);
    rect(100, 300, 100, 50);
    fill(0);
    text("A", 140, 330);
    fill(255);
    rect(400, 300, 100, 50);
    fill(0);
    text("B", 440, 330);
    if (mousePressed) {
      if ((pantalla==4) &&mouseX>100 &&mouseY>300 &&mouseX<200 &&mouseY<350) {
        pantalla=8;
      }
      if ((pantalla==4) &&mouseX>400 &&mouseY>300 &&mouseX<500 &&mouseY<350) {
        pantalla=5;
      }
    }
  }
  if (pantalla==5) {
    background(75);
    textFont(fuente);
    textSize(20);
    fill(0);
    text("El lobo llega, se come a la abuela y se disfraza con su ropa.\n¿Caperucita se da cuenta que no es su abuela?\n A: Si, se da cuenta y decide gritar. \nB: No se da cuenta y decice acercarse para darle un abrazo a la abuela.", 50, 50, 500, 500);
    fill(255);
    rect(100, 525, 100, 50);
    fill(0);
    text("A", 140, 560);
    fill(255);
    rect(400, 525, 100, 50);
    fill(0);
    text("B", 440, 560);
    if (mousePressed) {
      if ((pantalla==5) &&mouseX>100 &&mouseY>525 &&mouseX<200 &&mouseY<575) {
        pantalla=7;
      }
      if ((pantalla==5) &&mouseX>400 &&mouseY>525 &&mouseX<500 &&mouseY<575) {
        pantalla=6;
      }
    }
  }
  if (pantalla==6) {
    malo();
  }
  if (pantalla==7) {
    bueno();
    fill(255);
    textFont(fuente);
    textSize(30);
    tint(255, 255, 255, Opacidad);
    text("Caperucita grita fuerte, alerta a unos leñadores que estaban cerca y la rescatan.", 100, 225, 400, 500);
 text("Presionar 'Space' para reiniciar",100,425);
  }
  if (pantalla==8) {
    bueno();
    fill(255);
    textFont(fuente);
    textSize(30);
    tint(255, 255, 255, Opacidad);
    text("Caperucita Roja llega primero y cierra con llave la puerta porque se dio cuenta de su error.", 100, 225, 400, 500);
 text("Presionar 'Space' para reiniciar",100,425);
  }
}
