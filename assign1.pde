/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hpbar;
PImage treasure;

int q,x,y,z,s,t;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  x = 0;
  
  enemy = loadImage("img/enemy.png");
  z = floor(random(420));
  
  fighter = loadImage("img/fighter.png");
  
  hpbar = loadImage("img/hp.png");
  q = floor(random(200));
  
  treasure = loadImage("img/treasure.png");
  s = floor(random(640));
  t = floor(random(480));
}

void draw() {
  // your code
  background(0);
  image(bg1,x,0); //bg1
  image(bg2,x-640,0); //bg2
  x++;
  x %= 640;
  
  image(enemy,y,z);  //enemy
  y %= 640;
  y = y+2;
  
  image(fighter,590,240);  //fighter
  
  fill(#ff0000);
  rectMode(CORNER); 
  rect(10,0,q,25);
  image(hpbar,0,0);  //hp

  image(treasure,s,t);  //treasure
}
