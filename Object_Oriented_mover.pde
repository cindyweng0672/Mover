Mover[] m;
int n=300;

void setup() {
  size(800, 600);
  m=new Mover[n];
  for (int i=0; i<n; i++) {
    m[i]=new Mover();
  }
  noStroke();
  colorMode(HSB);
}

void draw() {
  for (int i=0; i<n; i++) {
    m[i].act();
    m[i].show();
  }
}
