float d1 = 190;
float d2 = 360;
float d3 = 500;
float d4 = 760;
float d5 = 1150;

///Planet(float w, float size, float dist, color theColor,  int moon)
Planet pl1 = new Planet(0.06, 15, d1, color(215, 215, 215), "Mercury");//////////Mercury
Planet pl2 = new Planet(0.024, 37, d2, color(198, 166, 107), "Venus");/////////Venus
Planet pl3 = new Planet(0.015, 40, d3, color(34, 113, 179), "Earth");//////////Earth
Planet pl4 = new Planet(0.008, 21, d4, color(243, 165, 5), "Mars");///////////Mars
Planet pl5 = new Planet(0.002, 55, d5, color(235, 219, 149), "Jupiter");/////////Jupiter

///the asteroid belt ///Asteroid(float tempd, float size)
Asteroid[] aste = new Asteroid[250];

void setup() {
  size(2500, 1500, P3D);
  for (int i=0; i< aste.length; i+=1) {
    aste[i] = new Asteroid(random(790, 1080), random(3, 8));
  }
}

void draw() {
  background(0);
  control();

  translate(width/2, height/2);
  scale(0.7);
  orbits();

  noStroke();
  lights();

  ///Sun
  fill(255, 35, 1);
  sphere(100);
  
  pushMatrix();
  translate(0,-860);
  fill(255, 200, 200);
  textSize(80);
  rotateX(-PI/2);
  text("Asteroid belt", -150, -90);
  popMatrix();

  ///Planets
  pl1.display(0);
  pl2.display(0);
  pl3.display(1);
  pl4.display(2);
  pl5.display(0);

  ///Asteroid belt
  for (int i=0; i<aste.length; i+=1) {
    aste[i].display();
  }
}

void control() {
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, 4*PI, 0));
  rotateY(map(mouseX, 0, width, 0, 4*PI));
  translate(-width/2, -height/2);
}

void orbits() {
  noFill();
  stroke(255);
  strokeWeight(3);
  circle(0, 0, 2*d1);
  circle(0, 0, 2*d2);
  circle(0, 0, 2*d3);
  circle(0, 0, 2*d4);
  circle(0, 0, 2*d5);
}
/////////  Aydin.R.W  /////////////
