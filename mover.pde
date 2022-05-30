class Mover {
  //instance variables 
  float x, y;
  float vx, vy;
  float hue;
  float d;

  //constructor 
  Mover() {
    x=width/2;
    y=height/2;
    vx=random(-3, 3);
    vy=random(-3, 3);
    hue=random(0, 255);
    d=random(30);;
  }

  //behaviour functions
  void act() {
    x+=vx;
    y+=vy;
    //vx=random(-3, 3);
    //vy=random(-3, 3);

    if (y<0||y>=(height-d)) {
      vy=vy*-1;
    }

    if (x>=(width-d)||x<0) {
      vx=vx*-1;
    }
  }

  void show() {
    fill(hue, 185, 255);
    square(x, y, d);
    hue=(hue+1)%255;
    /*if(hue>255){
      hue=0;
    }*/
  }
}
