//Tp1 Gonzalez Martina Julieta, 88141/3, comisión 3.

float y, x, iy, dy, tiempo, c, p, s; //numeros enteros 
String r, j; //variable de texto 
PImage arte1, arte2, arte3, arte4;
PFont fuente;

void setup() {
  imageMode(CENTER); //pone la imagen en el centro
  textAlign(CENTER); //pone el texto en el centro
  size(640, 480);
  background(0);
  x = width/2;
  r = "Espacio Byte";
  tiempo = 0;
  c=0;
  p=0;
  //fuente
  fuente=createFont("Vogue.ttf", 30);
  textFont(fuente);
  //imagenes
  arte1=loadImage("arte1.png");
  arte2=loadImage("arte2.jpg");
  arte3=loadImage("arte3.jpg");
  arte4=loadImage("arte4.jpg");

}
void draw() {
  tiempo ++;
  println( "time"+tiempo);
  background(0);
  println(frameCount);
  
  
  //pantalla 1 
  if ( tiempo > 0 && tiempo < 350 ) { //entre ese tiempo va a pasar tal cosa
    image(arte1, width/2, height/2, width, height);
    pushStyle();
    fill(255, c);
    c=c+1; //fade
    text( r, x, 400); //texto y ubicacion
    popStyle();
  }
 

  //pantalla 2
  if ( tiempo > 350 && tiempo < 700 ) { 
    p=p+1; //fade
    image (arte2, width/2, height/2, width, height);
    pushStyle();
    textSize(15);
    fill(255, p);
    text( "es un museo en línea dedicado al arte digital. \n Un entorno natural para la exhibición de trabajos artísticos \n que abarcan un amplio espectro de prácticas entre las que se encuentran \n el software, realidad virtual y aumentada, \n  visuales, sonoras, ciber literatura.", x, 400 );
    popStyle();
 
  }
 
  //pantalla 3
  if ( tiempo > 700 && tiempo < 1050 ) { 
    s=s+1;
    image (arte3, width/2, height/2, width, height);
    pushStyle();
    textSize(15);
    fill(255, s);
    text( "Un museo interactivo sin límites espaciales, abierto las 24 horas, los 365 dias. \n Fundado en 2012, Espacio Byte es una institucion sin fines de lucro creada \n con la mision de conservar, investigar y exhibir \n arte digital argentino e internacional.", x, 400 );
    popStyle();
 
  } 
  
    //pantalla 4
  if ( tiempo > 1050 && tiempo < 2000 ) { 
    s=s+1;
    image (arte4, width/2, height/2, width, height);
    pushStyle();
    textSize(15);
    fill(255, s);
    text( "De fondo, podemos observar algunas de las obras \n expuestas en el sitio espaciobyte.org.", x, 400 );
    popStyle();
 
  } 
  
  
  //boton
  if (tiempo > 1600 && tiempo < 2000 ) {
  rect (250, 240, 120, 30);
  pushStyle();
  fill(0);
  textSize(20);
  text( "Reiniciar", 310, 265);
  popStyle();
  
}
   
   if  ( tiempo > 1600 && tiempo < 2000 ) {
    if (mousePressed && mouseX > 250 && mouseX < 370 && mouseY > 240 && mouseY < 270) { 
      tiempo=0;
      c=0;
      p=0;
      s=0;
    }
   }
}
