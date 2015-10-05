/* please implement your assign1 code in this file. */
PImage ship;
PImage enemy;
PImage bg1;
PImage bg2;
PImage hp;
PImage treasure;
int enemyX, treasureX, treasureY, bgX1, bgX2, bgX, hpRandom, bgX2_x, bgX1_x;

void setup () {
  size(640,480) ;  // must use this size.
  ship =  loadImage("img/fighter.png");
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  treasureX = floor(random(640));
  treasureY = floor(random(480));
  enemyX = 0;
  hpRandom = floor(random(50,200));
  bgX = 1280;
}

void draw() {
  //bg
  image(bg1,bgX1,0);
  image(bg2,bgX2,0);
  bgX2 = bgX - 640;
  bgX1 = bgX - 1280;
  bgX2_x = bgX2 %= 1280;
  bgX1_x = bgX1 %= 1280;
  bgX2 = bgX2_x - 640;
  bgX1 = bgX1_x - 640;
  bgX += 4;
  
  
  //hp volume
  stroke(255,0,0);
  fill(255,0,0);
  rect(25,25,hpRandom,20);
  
  //hp
  image(hp,20,20);
  
  //enemy
  image(enemy,enemyX,150);
  enemyX += 2;
  enemyX %= 640;
  
  //ship
  image(ship,580,240);
  
  //treasure
  image(treasure,treasureX,treasureY);
}
