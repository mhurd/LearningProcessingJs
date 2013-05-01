PVector location = new PVector(100,100);
PVector reverseX = new PVector(-1, 1);
PVector reverseY = new PVector(1, -1);
PVector velocity = new PVector(1, 3.3);
float ballRadius = 8;

void setup() {
    size(300, 200);
}

void draw() {
    background();
    location.add(velocity);
    if ((location.x + ballRadius > width) || (location.x - ballRadius < 0)) {
        velocity.mult(reverseX);
    }
    if ((location.y + ballRadius > height) || (location.y - ballRadius < 0)) {
        velocity.mult(reverseY);
    }
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,ballRadius*2,ballRadius*2);
}