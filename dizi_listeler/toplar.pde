
class toplar{
  //Global değişkenler
  float x    = 0;
  float y    = 0;
  float hizX = 4;
  float hizY = 0.5;
  
  //Yapıcı metodlar
  toplar(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  void yurut(){
     goruntule();
     tasi();
     sicrama();
     dusme();
  }
  
  void goruntule(){
    ellipse(x,y,30,30);
  }
  
  void tasi(){
    x = x + hizX;
    y = y + hizY;
  }
  
  void sicrama(){
    if(x > width){
      hizX = hizX * -1;
    }
    if(x < 0){
      hizX = hizX * -1;
    }
    if(y > height){
      hizY = hizY * -1;
    }
    if(y < 0){
      hizY = hizY * -1;
    }
  }
  
  void dusme(){
    hizY = hizY + 0.2;
  }
  
}