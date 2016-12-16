
import toxi.geom.*;

ArrayList toplam_ball;

void setup(){
  size(700,700);
  smooth();
  
 toplam_ball = new ArrayList(); 

 for(int i = 0; i < 500; i++){
   Vec3D orjin = new Vec3D(random(width),random(200),0); // oluştulacak top için konum belirlendi.
   toplar ball = new toplar(orjin); 
   toplam_ball.add(ball);
 }
 
}

void draw(){
  background(0);
  
   for(int i = 0; i < toplam_ball.size(); i++){
     toplar ball2 = (toplar) toplam_ball.get(i); 
     ball2.yurut();
   }
   
}
