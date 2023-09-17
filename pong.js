//Gonzalez, Martina Julieta 88141/9


var estado=0;
var ball;
var paddle;
var score = 0;
var gameOver = false;
var win = false;
function setup() {
  createCanvas(400, 600);
  ball = new Ball();
  paddle = new Paddle();
}

function draw() {
  background(0);

  if (estado==0) {
    background(50);
    textSize(32);
    fill(255);
    text("JUEGO", width / 2 - 60, height / 3);
    text(" PONG", width / 2 - 60, height / 3+50);
    text("Presiona la pantalla\n para instrucciones", width / 8, height / 2+100);
  } else if (estado==2) {
    if (!gameOver && !win) {
      ball.update();
      ball.show();
      paddle.show();

      if (ball.hitsPaddle(paddle)) {
        ball.bounceOffPaddle();
        score++;
        ball.increaseSpeed();
      }

      if (ball.y > height) {
        gameOver = true;
      }
      if (score==13) {
        win = true;
      }

      paddle.update();
      paddle.move();

      textSize(32);
      fill(255);
      text("Score: " + score, 10, 30);
    }
    if (gameOver==true) {
      background(220,0,0);
      textSize(32);
      fill(255);
      text("perdiste", width / 2 - 60, height / 3);
      text("Final Score: " + score, width / 2 - 85, height / 3 + 40);
      text("Presiona 'R' para\n       reiniciar", width / 2 - 120, height / 3 + 80);
      text("Presiona 'C' para\n       créditos", width / 2 - 120, height / 3 + 160);
    }
    if (win==true) {
      background(0,220,0);
      textSize(32);
      fill(255);
      text("ganaste", width / 2 - 60, height / 3);
      text("Final Score: " + score, width / 2 - 85, height / 3 + 40);
      text("Presiona 'R' para\n       reiniciar", width / 2 - 120, height / 3 + 80);
      text("Presiona 'C' para\n       créditos", width / 2 - 120, height / 3 + 160);
    }
  } else if (estado==1) {
    textSize(32);
    fill(255);
    text("instrucciones", width / 2 - 100, height / 4);
    text("evita que la pelota caiga,\n    para eso mueve la\nraqueta con las flechaz\n   izquierda y derecha", width / 2 - 170, height / 3);
    text("Presiona la pantalla\n       para jugar", width / 2 - 140, height -100);
  } else if (estado==3) {
    textSize(32);
    fill(255);
    text("CRÉDITOS", width / 2 - 80, height / 3);
    text("Creadora del juego:\n Martina Gonzalez", 60, height / 2);
    text("Presiona 'I' para\n       inicio", width / 2 - 120, height / 2 + 120);
  }
}


function keyPressed() {
  if (key === "r" || key === "R") {
    if (gameOver || win) {
      gameOver = false;
      win = false;
      ball = new Ball();
      paddle = new Paddle();
      score = 0;
    }
  }
  if (key === "c" || key === "C") {
    estado=3;
  }
  if (key === "i" || key === "I") {
    estado=0;
    if (gameOver || win) {
      gameOver = false;
      win = false;
      ball = new Ball();
      paddle = new Paddle();
      score = 0;
    }
  }
}
function mousePressed() {
  estado++;
}
