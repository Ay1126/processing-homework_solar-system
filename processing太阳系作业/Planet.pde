class Planet{
  float theta=0;
  float a;
  float s;
  float r;
  color c;
  String p;
  Moon moon1 ;
  Moon moon2 ;
  Moon moon3 ;
  
  Planet(float w, float size, float dist, color theColor, String name) {
    a =w ;
    s =size;
    r =dist;
    c =theColor;
    p =name;
    moon1 =new Moon(0.21, 9, 60, color(215,215,215));
    moon2 =new Moon(0.22, 10, 30, color(71,74,81));
    moon3 =new Moon(0.20, 7, 40, color(184,183,153));
  }
  
  
  void display(int n) {
    pushMatrix();
    rotate(theta);
    translate(r, 0);
    fill(c);
    sphere(s);
    pushMatrix();
    fill(255,200,200);
    textSize(50);
    rotateX(-PI/2);
    text(p,0,-80);
    popMatrix();
    theta+=a;
    if (n == 1){
      moon1.display();
    }
    if (n == 2){
      moon2.display();
      moon3.display();
    }
    popMatrix();
  }
}
