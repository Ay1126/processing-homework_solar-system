class Moon {
  float a;
  float s;
  float r;
  color c;
  float theta=0;
  Moon(float w, float size, float dist, color theColor) {
    a =w;
    s =size;
    r =dist;
    c =theColor;
  }

  void display() {
    pushMatrix();
    rotate(theta);
    translate(r, 0);
    fill(c);
    sphere(s);
    theta+=a;
    popMatrix();
  }
}
