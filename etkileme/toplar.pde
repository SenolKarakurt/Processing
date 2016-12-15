
class toplar{
  //Global değişkenler
   
  Vec3D konum = new Vec3D(0,0,0); // 3D, 3 boyutlu vektör seçimi için kullanılan sınıf. 0,0,0 ifadesi x,y,z konumları içindir.
                                  // 2D, 2 boyutlu vektör seçimleri için 0,0 x ve y konumları içindir.
  
  Vec3D hiz = new Vec3D(random(-2,2),random(-2,2),0);
  
  Vec3D acc = new Vec3D();
  
  Vec3D dus = new Vec3D(0,0.2,0);
  
  //Yapıcı metod
  toplar(Vec3D _konum){
    
    konum = _konum;
  }
  
  void yurut(){
     goruntule();
     tasi();
     sicrama();
     //dusme();
     //ara_cizgi();  
     toplu_hareket();
  }
  
  void goruntule(){
    ellipse(konum.x,konum.y,10,10);
  }
  
  void tasi(){
    
    hiz.addSelf(acc);

    hiz.limit(2);
    
    konum.addSelf(hiz); // vektörlere başka bir vektör eklemek için addSelf fonksiyonu kullanılır. hiz vektörü konum vektörüne eklenir. 
                        // Eklenen hiz vektörü de sadece x koordinatı için konumuna hiz vektörü kadar ekler.
    acc.clear(); 
  }
  
  void sicrama(){
    if(konum.x > width){
      hiz.x = hiz.x * -1; // hiz vektörünün x koordinatına işlem yapılır. 
    }
    if(konum.x < 0){
      hiz.x = hiz.x * -1;
    }
    if(konum.y > height){ 
      hiz.y = hiz.y * -1; // hiz vektörünün y koordinatına işlem yapılır.
    }
    if(konum.y < 0){
      hiz.y = hiz.y * -1;
    }
  }
 
  void dusme(){
    hiz.addSelf(dus);
  }
  
  void ara_cizgi(){
        
    for(int i = 0; i < toplam_ball.size(); i++){
      
      toplar diger = (toplar) toplam_ball.get(i);
      
      float mesafe = konum.distanceTo(diger.konum);
      
      if(mesafe > 0 && mesafe < 80){
        
        stroke(255,0,0);
        strokeWeight(0.1);
        line(konum.x,konum.y,diger.konum.x,diger.konum.y);
        
      }
    }
  }
  
  void toplu_hareket(){
    
    ayrilma(5);
    birlesme(0.001);
    hizalama(0.1);
  }
  
  void ayrilma(float buyuk){
    
    Vec3D yonlendirme = new Vec3D();
    int sayac = 0;
    
     for(int i = 0; i < toplam_ball.size(); i++){
      
      toplar diger = (toplar) toplam_ball.get(i);
      
      float mesafe = konum.distanceTo(diger.konum);
      
      if(mesafe > 0 && mesafe < 30){
        
          Vec3D farkli = konum.sub(diger.konum);
          farkli.normalizeTo(1.0/mesafe);
          yonlendirme.addSelf(farkli);
          sayac++;
        }
      }
      
      if(sayac > 0){
          yonlendirme.scaleSelf(1.0/sayac);
      }
      
      yonlendirme.scaleSelf(buyuk);
      acc.addSelf(yonlendirme);
    }
    
    void birlesme(float buyuk){
    
      Vec3D sum = new Vec3D();
      int sayac = 0;
    
     for(int i = 0; i < toplam_ball.size(); i++){
      
      toplar diger = (toplar) toplam_ball.get(i);
      
      float mesafe = konum.distanceTo(diger.konum);
      
      if(mesafe > 0 && mesafe < 60){
      
        sum.addSelf(diger.konum);
        sayac++;
        
      }
    }
    
   if(sayac >0){
     
     sum.scaleSelf(1.0/sayac);
   }
   
   Vec3D yonlendirme = sum.sub(konum);
   yonlendirme.scaleSelf(buyuk);  
   acc.addSelf(yonlendirme);
   
  }
  
  void hizalama(float deger){
  
     Vec3D yonlendirme = new Vec3D();
     int sayac = 0;
    
     for(int i = 0; i < toplam_ball.size(); i++){
      
      toplar diger = (toplar) toplam_ball.get(i);
      
      float mesafe = konum.distanceTo(diger.konum);
      
      if(mesafe > 0 && mesafe < 60){
        
        yonlendirme.addSelf(diger.hiz);
        sayac++;
        
      }
    }
    
    if(sayac > 0){
      yonlendirme.scaleSelf(1.0/sayac);
    }
    
    yonlendirme.scaleSelf(deger);
    acc.addSelf(yonlendirme);
    
  }  
}