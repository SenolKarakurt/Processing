
top [] toplam_ball = new top[100];

void setup(){
  size(650,650);
  smooth();
  
  for(int i = 0; i < toplam_ball.length; i++){
    toplam_ball[i]  = new top(random(0,width),random(0,200));
  }
}

void draw(){
   
  background(0);
   
   for(int i = 0; i < toplam_ball.length; i++){
      toplam_ball[i].yurut();
   }
}