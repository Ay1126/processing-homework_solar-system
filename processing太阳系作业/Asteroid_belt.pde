class Asteroid {
  float theta0;
  float d;
  float angleChange;
  float s;

  Asteroid(float tempd, float size) {
    d=tempd;
    s=size;
    theta0=random(0, 2*PI);
    angleChange=map(d, 790, 1080, 0.001, 0.0001);
  }

  void display() {
    pushMatrix();
    rotate(theta0);
    translate(0, d);
    fill(random(120, 130), random(120, 130), 120);
    sphere(s);
    theta0+=angleChange;
    popMatrix();
  }
}
