
void setup(){

  size(800,800);
  smooth();
}

void draw(){
 
  background(80);
  
  //elips_ciz(); //Oluşturulan fonksiyonun çalışması için draw fonk. içerisine yazılmalı
  
  //elips_ciz(300,300); // Parametreli fonksiyon
  
  
  elips_ciz(200,200,60); // 3. parametreler fill(doldurma) için renk değerleri 
  elips_ciz(500,200,70);
  elips_ciz(200,400,80);
  
  
}

/*
void elips_ciz(){
  ellipse(400,400,80,80);
}
*/
/*
void elips_ciz(float x,float y){
  ellipse(x,y,80,80);
}
*/

void elips_ciz(float x, float y, float r){
  
  fill(r,0,0); // red green blue için renk değerleri
  ellipse(x,y,80,80);

}