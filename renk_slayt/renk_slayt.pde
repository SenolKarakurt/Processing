
import controlP5.*;

ControlP5 kontrol;

int renk_degeri = 100; 

void setup(){
  size(600,600);
  
  kontrol = new ControlP5(this);
  
  Slider s = kontrol.addSlider("renk_degeri",0,255,100,10,10,200,30);
  /* 0-255 slaytın aralığını, 100 slaytın ilk açıldığında hangi değerde gözükeceğini,
     10,10 x ve y koordinatları, 200 slaytın uzunluk değeri, 30 slaytın genişlik değeri  */  
  
}

void draw(){
  background(renk_degeri);
  
}