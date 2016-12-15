
ArrayList toplam_ball;


void setup(){
  size(700,700);
  smooth();
  
 toplam_ball = new ArrayList(); 

 for(int i = 0; i < 100; i++){
   toplar ball = new toplar(random(0,width),random(0,200)); 
   toplam_ball.add(ball);
 }
 
}

void draw(){
   
  background(0);
   
   for(int i = 0; i < 100; i++){
     toplar ball = (toplar) toplam_ball.get(i); 
     ball.yurut();
   }
   
}