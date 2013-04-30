class Walker {

    int tx = 0;
    int ty = 0;
    int tz = 0;
    int x;
    int y;

    Walker() {
        x = width/2;
        y = height/2;
    }

    void display() {
        ellipse(x,y,10,10);
    }

    void step() {
        tx = tx + 0.01;
        ty = ty + 0.01;
        tz = tz + 0.01;
        float xn = noise(tx);
        float yn = noise(1000 + ty);
        float zn = noise(2000 + tz);

        x = map(xn,0,1,0,width);
        y = map(yn,0,1,0,height);
        float colorr = map(xn,0,1,0,255);
        float colorg = map(yn,0,1,0,255);
        float colorb = map(zn,0,1,0,255);

        stroke(color(colorr, colorg, colorb));
    }

}

Walker w;

void setup() {
    size(300, 200);
    w = new Walker();
}

void draw() {
    w.step()
    w.display();
}