//Tp1 Gonzalez Martina Julieta, 88141/3, comisión 3.

float y, x, iy, dy, tiempo, c, p; //numeros enteros 
String r, j; //variable de texto 
PImage fondo, coralrosado, coralceleste;
PFont fuente;
float vel;

void setup() {
  imageMode(CENTER); //pone la imagen en el centro
  textAlign(CENTER); //pone el texto en el centro
  size(600, 300);
  background(0);
  y = height+20; //le da valor a los int
  x = width/2;
  r = "Barbie una aventura \n de sirenas";
  iy = height+50;
  dy = -50;
  tiempo = 0;
  vel=0.5;
  c=255;
  p=0;
  fondo=loadImage("fondo.png");
  //fuente
  fuente=createFont("Vogue.ttf", 30);
  textFont(fuente);
  // coral rosado
  coralrosado=loadImage("coralrosado.png");
  coralrosado.resize(180, 90);
  // coral celeste
  coralceleste=loadImage("coralceleste.png");
  coralceleste.resize(75, 100);
}
void draw() {
  background(0);
  image(fondo, width/2, height/2);
  //pantalla 1 texto
  if ( tiempo > 0 && tiempo < 350 ) { //entre ese tiempo va a pasar tal cosa
    pushStyle();
    fill(255, 168, 168, c);
    c=c-0.5;
    text( r, x, height/2 ); //texto y ubicacion
    popStyle();
  }
  /*si el valor de igriega 
   es menor a -10 se reinicia*/

  //pantalla 1 imagenes
  if ( tiempo > 0 && tiempo < 900 ) { 
    image (coralrosado, width/2-200, iy+40);
    iy=iy-vel;
    image (coralceleste, width/2+200, dy);
    dy=dy+vel;
  } else if (iy < -50 && dy > height+50) { 
    iy = height+50;
    dy = -50;
  } 

  //pantalla 2 texto
  if ( tiempo > 450 && tiempo < 800 ) {
    textSize(20);
    text( "Directed by \n William Lau", x, y );
    y--;
  } else if ( y < -50) { 
    y = height+20;
  }

  //pantalla 2 corales
  if ( tiempo > 900 && tiempo < 1800 ) { 
    image (coralrosado, width/2-200, iy+40);
    iy=iy-vel;
    image (coralceleste, width/2+200, dy);
    dy=dy+vel;
  } else if (iy < -50 && dy > height+50) { 
    iy = height+50;
    dy = -50;
  } 

  //pantalla 3 texto
  if ( tiempo > 800 && tiempo < 1180 ) {
    textSize(20);
    text( "Written by \n Ellise Allen", x, y );
    y--;
  } else if ( y < -20) { 
    y = height+50;
  }

  //pantalla 4 texto
  if ( tiempo > 1180 && tiempo < 1550 ) {
    textSize(20);
    text(" Music by \n Bc Smith", x, y );
    y--;
  } else if ( y < -20) { 
    y = height+50;
  }

  //pantalla 5 texto
  if ( tiempo > 1550 && tiempo < 1900) {
    textSize(20);
    text("Production Designer \n Walter P. Martishius", x, y );
    y--;
  } else if ( y < -20) { 
    y = height+50;
  }

  //pantalla corales 3
  if ( tiempo >1800 && tiempo < 2000 ) { 
    image (coralrosado, width/2-200, iy+40);
    iy=iy-vel;
    image (coralceleste, width/2+200, dy);
    dy=dy+vel;
  } else if (iy < -50 && dy > height+50) { 
    iy = height+50;
    dy = -50;
  } 

  //pantalla 6 texto
  if ( tiempo > 1900) {
    textSize(100);
    fill(255, 168, 168, p);
    text("Fin", x, height/2 );
    p=p+0.5;
  }

  tiempo ++;
  println( "y" + y );
  println( "time"+tiempo);
}
