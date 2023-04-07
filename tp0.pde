//Gonzalez Martina Julieta, 88141/9 tp0

PImage mar;

void setup(){
 size(600,600);
 mar = loadImage ("mar.jpg");
}

void draw(){
 background(249,217,232);
 pushStyle();
 strokeWeight(2);
 stroke(0);
 noFill();
 ellipse(200,200,300,300);//cara
 line(230,180,230,230); //tabique nariz
 line(200,240,230,230); //punta nariz
 ellipse(150,150,80,80); //linea ojo izq
 ellipse(290,150,80,80); //linea ojo der
 ellipse(200,290,90,90); //linea boca
 popStyle();
 pushStyle();
 noStroke();
 fill(249,217,232);
 ellipse(150,135,80,80); //tapa ojo iqz
 ellipse(290,135,80,60); //tapa ojo der
 ellipse(200,285,100,90); //tapa boca
 popStyle();
 line(120,180,90,200); //pestaña 1 izq
 line(130,185,110,200); //pestaña 2 izq
 line(140,190,120,205); //pestaña 3 izq
 line(265,185,245,205); //pestaña 1 der
 line(275,190,260,205); //pestaña 2 der
 line(290,190,275,205); //pestaña 3 der
 pushStyle(); //pelo
 fill(255,255,0);
 ellipse(100,80,100,110); 
 ellipse(50,150,90,100); 
 ellipse(50,250,100,110); 
 ellipse(340,100,90,100); 
 ellipse(380,170,90,120);
 ellipse(380,250,80,110);
 popStyle();
 
 mar.resize(298, 168);
 image(mar, 280, 400);
}
