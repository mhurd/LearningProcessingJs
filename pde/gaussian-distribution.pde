void setup() {
    size(400, 300);
    generator = new Random();
}

void draw() {
    float num = (float) generator.nextGaussian();
    float sd = 80;
    float mean = 200;
    float x = sd * num + mean;
    noStroke();
    fill(255,10);
    ellipse(x,150,32,32);
}