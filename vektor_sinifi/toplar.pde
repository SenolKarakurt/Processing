
class toplar{
  //Global değişkenler
   
  Vec3D konum = new Vec3D(0,0,0); // 3D, 3 boyutlu vektör seçimi için kullanılan sınıf. 0,0,0 ifadesi x,y,z konumları içindir.
                                  // 2D, 2 boyutlu vektör seçimleri için 0,0 x ve y konumları içindir.
  
  Vec3D hiz = new Vec3D(random(-2,2),random(-2,2),0);
  
  Vec3D dus = new Vec3D(0,0.2,0);
  
  //Yapıcı metod
  toplar(Vec3D _konum){
    
    konum = _konum;
  }
  
  void yurut(){
     goruntule();
     tasi();
     sicrama();
     dusme();
  }
  
  void goruntule(){
    ellipse(konum.x,konum.y,20,20);
  }
  
  void tasi(){
    
    konum.addSelf(hiz); // vektörlere başka bir vektör eklemek için addSelf fonksiyonu kullanılır. hiz vektörü konum vektörüne eklenir. 
                        // Eklenen hiz vektörü de sadece x koordinatı için konumuna hiz vektörü kadar ekler.
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
 
}