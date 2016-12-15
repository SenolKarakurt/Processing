
ArrayList toplam_ball;


void setup(){
  size(700,700);
  smooth();
  
 toplam_ball = new ArrayList(); 

 /*for(int i = 0; i < 100; i++){
   toplar ball = new toplar(random(0,width),random(0,200)); 
   toplam_ball.add(ball);
 }*/
 
}

void draw(){
  background(0);
  
   //toplar ball = new toplar(random(0,width),random(0,200)); /* Burada topların koordinatları rastgele değer alır. rastgele değeri 0-width 0-200 arası alırlar..
                                                              /* Rastgele toplar üretilir. 300,300 gibi değerler yazılırsa toplar bu koordinatlardan türetilir.*/
   toplar ball = new toplar(300,300);                                                            
   toplam_ball.add(ball);
  
   for(int i = 0; i < toplam_ball.size(); i++){
     toplar ball2 = (toplar) toplam_ball.get(i); 
     ball2.yurut();
   }
   
}