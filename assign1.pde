/* please implement your assign1 code in this file. */
PImage bg1,  bg2, enemy, fighter, hpbar, treasure;

int enemyX,enemyY,backgrond1,backgrond2,hp,treasureX,treasureY;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  backgrond1 = -640;
  backgrond2 = 0;
  
  enemy = loadImage("img/enemy.png");
  enemyY = floor(random(420));
  
  fighter = loadImage("img/fighter.png");
  
  hpbar = loadImage("img/hp.png");
  hp = floor(random(190));
  
  treasure = loadImage("img/treasure.png");
  treasureX = floor(random(600));
  treasureY = floor(random(440));
}

void draw() {
  // your code
  background(0);
  image(bg1,backgrond1,0); //bg1
  backgrond1 = backgrond1 +2;
  if (backgrond1 == 640){
  backgrond1 = -640;
  }
  image(bg2,backgrond2,0); //bg2
  backgrond2 = backgrond2 +2;
  if (backgrond2 == 640){
  backgrond2 = -640;
  }

  image(enemy,enemyX,enemyY);  //enemy
  enemyX %= 640;
  enemyX = enemyX+4;
  
  image(fighter,590,240);  //fighter
  
  fill(#ff0000);
  rectMode(CORNER); 
  rect(10,0,hp,25);
  image(hpbar,0,0);  //hp

  image(treasure,treasureX,treasureY);  //treasure
}
