
import toxi.geom.*;

Vec3D vektor1 = new Vec3D(100,100,0);
Vec3D vektor2 = new Vec3D(-100,50,0);

void setup(){
  size(600,600);
}

void draw(){
  background(0);
    
  translate(300,300);
  
  stroke(100); // 100 değeri çizgi için rgb renk değeridir. Bu komut örn olarak -> stroke(100,150,200) gibi de kullanılabilir.
  strokeWeight(1.2); // strokeWeight -> çizilen çizginin kalınlığını-genişliğini artırır. Çizginin görünürlüğü artar. 
  line(-600,0,600,0); // [-600,0] ile [600,0] arası çizgi. İlk değer yatay ikinci değer dikey çizgi içindir.
  line(0,-600,0,600); // [0,-600] ile [0,600] arası çizgi. yatay eksen sağa doğru artar sola doğru azalır, dikey eksen aşağa doğru artar yukarı doğru azalır. 
                      // Bir çizginin y koordinatları aynı olduğunda çizgi yataydır.
                      // Bir çizginin x koordinatları aynı olduğunda çizgi dikeydir.
  stroke(255,0,0);
  strokeWeight(6);
  point(vektor1.x,vektor1.y); // vektörün x-y konumunda nokta oluşur. 
  
  strokeWeight(1);
  line(0,0,vektor1.x,vektor1.y); // 0,0 noktasından başlayıp vektörün x ve y konumuna çizgi çeker.
  
  stroke(200,100,0);
  strokeWeight(6);
  point(vektor2.x,vektor2.y); 
  
  strokeWeight(1);
  line(0,0,vektor2.x,vektor2.y);
  /*
  Vec3D yeni_vektor = vektor1.copy();
  
  yeni_vektor.normalize();
  yeni_vektor.scaleSelf(0.5);
  */
  
  //  Vec3D yeni_vektor = vektor2.copy(vektor1);
  // Vec3D yeni_vektor = vektor1.add(vektor2);
  Vec3D yeni_vektor = vektor2.sub(vektor1);
  
  stroke(150,200,120);
  strokeWeight(6);
  point(yeni_vektor.x,yeni_vektor.y);
  
  strokeWeight(1);
  //line(vektor1.x,vektor1.y,yeni_vektor.x,yeni_vektor.y);
  line(0,0,yeni_vektor.x,yeni_vektor.y);
}