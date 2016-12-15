
top ball;
top ball2;
top ball3;
top ball4;
top ball5;
top ball6;
top ball7;
top ball8;


void setup(){
  size(700,700);
  smooth();
  
  ball  = new top(200,200); //sınıftan türetilenler
  ball2 = new top(100,200);
  ball3 = new top(400,300);
  ball4 = new top(300,500);
  ball5 = new top(500,600);
  ball6 = new top(300,200);
  ball7 = new top(100,150);
  ball8 = new top(150,250);
}

void draw(){
   
  background(0);
   
  ball.yurut(); // sınıftaki fonksiyonu çağırma 
  ball2.yurut(); 
  ball3.yurut(); 
  ball4.yurut(); 
  ball5.yurut(); 
  ball6.yurut();
  ball7.yurut();
  ball8.yurut();
}