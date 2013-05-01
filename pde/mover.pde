class Mover {

    PVector location;
    PVector velocity;
    PVector acceleration;

    float topSpeed = 4;
    float radius = 8;
    float diameter = radius * 2;

    Mover() {
        location = new PVector(width/2,height/2);
        velocity = new PVector(0,0);
        randomAcceleration();
    }

    void randomAcceleration() {
        acceleration = new PVector(random(-1, 1), random(-1, 1));
        acceleration.mult(random(2));
    }

    void toMouseAcceleration() {
        PVector mouse = new PVector(mouseX, mouseY);
        PVector dir = PVector.sub(mouse,location);
        dir.normalize();
        dir.mult(random(0.25));
        acceleration = dir;
    }

    void update() {
        toMouseAcceleration();
        //randomAcceleration();
        velocity.add(acceleration);
        velocity.limit(topSpeed);
        location.add(velocity);
    }

    void display() {
        stroke(0);
        fill(175);
        ellipse(location.x, location.y, diameter, diameter);
    }

    void wrapEdges() {
        if (location.x > width) {
            location.x = 0;
        } else if (location.x < 0) {
            location.x = width;
        }

        if (location.y > height) {
            location.y = 0;
        } else if (location.y < 0) {
            location.y = height;
        }
    }

    void checkEdges() {
        wrapEdges();
    }

}

Mover mover;

void setup() {
    size(300, 200);
    mover = new Mover();
}

void draw() {
    mover.update();
    mover.checkEdges();
    background();
    mover.display();
}
