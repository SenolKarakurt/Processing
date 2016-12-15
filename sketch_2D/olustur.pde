
class olustur{
    
  Vec3D konum = new Vec3D();
  Vec3D merkez;
  
  float aci = 0;
  float radius = 200;
  float z = 0;
  int sayma = 0;
  float hiz = 0.05;
  
  olustur(Vec3D _merkez){
          merkez = _merkez;
   }
   
   void yurut(){
     
     konum_hesapla();
     tasi_guncelle();
     parca_dusur();
     spring_dusur();
     goruntule();
   }
   
  void konum_hesapla(){
      konum = new Vec3D(cos(aci)*radius, sin(aci)*radius, 0);
   }
   
  void tasi_guncelle(){
       aci = aci + 0.05;
   if(aci >= TWO_PI){ //TWO_PI = 6.2831855 sabit bir değerdir.
       aci = 0;
       z++;
   }
  }
  
  void parca_dusur(){
     VerletParticle p = new VerletParticle(konum.x,konum.y,konum.z);
    
   if(z == 0){
       p.lock();
   }
   fizik.addParticle(p);
   sayma++;
  }
  
  void spring_dusur(){
    
    int dif = (int)(TWO_PI/hiz);
    
    if (z > 0){
      if(sayma > 1){
      VerletParticle p0 = (VerletParticle) fizik.particles.get(sayma-1);
      VerletParticle p1 = (VerletParticle) fizik.particles.get(sayma-2);
      VerletParticle p2 = (VerletParticle) fizik.particles.get(sayma-1-dif);
      
      VerletSpring sp = new VerletSpring(p0,p1,10,0.1);
      fizik.addSpring(sp);
      
      VerletSpring sp2 = new VerletSpring(p0,p2,10,0.1);
      fizik.addSpring(sp2);
    }
   }
  }
   
   void goruntule(){
     strokeWeight(8);
     stroke(0,0,255);
       
     point(konum.x,konum.y,konum.z);
   }
   
 }