class Ball {
  constructor() {
    this.x = width / 4;
    this.y = height / 4;
    this.radius = 10;
    this.xSpeed = random(3, 4) * (random() > 0.5 ? 1 : -1);
    this.ySpeed = random(3, 4);
  }

  update() {
    this.x += this.xSpeed;
    this.y += this.ySpeed;

    if (this.x < this.radius || this.x > width - this.radius) {
      this.xSpeed *= -1;
    }

    if (this.y < this.radius) {
      this.ySpeed *= -1;
    }
  }

  show() {
    fill(255);
    ellipse(this.x, this.y, this.radius * 2);
  }

  hitsPaddle(paddle) {
    if (
      this.y + this.radius >= paddle.y &&
      this.x >= paddle.x &&
      this.x <= paddle.x + paddle.width
      ) {
      return true;
    }
    return false;
  }

  bounceOffPaddle() {
    this.ySpeed *= -1;
  }
  increaseSpeed() {
    this.xSpeed *= 1.05;
    this.ySpeed *= 1.05;
  }
}
