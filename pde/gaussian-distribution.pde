void setup() {
    size(300, 200);
    generator = new Random();
}

void draw() {
    float num = (float) generator.nextGaussian();
    float sd = 80;
    float mean = 200;
    float x = sd * num + mean;
    noStroke();
    fill(255,10);
    ellipse(x,100,32,32);
}