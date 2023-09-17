class Paddle {
  constructor() {
    this.width = 80;
    this.height = 10;
    this.x = width / 2 - this.width / 2;
    this.y = height - 30;
    this.speed = 6;
  }

  update() {
    this.x = constrain(this.x, 0, width - this.width);
  }

  show() {
    fill(255);
    rect(this.x, this.y, this.width, this.height);
  }

  move() {
    if (keyIsDown(LEFT_ARROW)) {
      this.x -= this.speed;
    }
    if (keyIsDown(RIGHT_ARROW)) {
      this.x += this.speed;
    }
  }
}
