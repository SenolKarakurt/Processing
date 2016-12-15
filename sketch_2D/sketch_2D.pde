import peasy.*;
import toxi.physics.*;
import toxi.physics.constraints.*;
import toxi.physics.behaviors.*;
import toxi.geom.*;
import processing.opengl.*;

PeasyCam kam;

VerletPhysics fizik;

VerletParticle parca;

olustur birim;

void setup(){
  size(800,600,OPENGL);
  
  kam = new PeasyCam(this,100);
  
  fizik = new VerletPhysics();
  
  Vec3D merkez = new Vec3D(0,0,0);
  birim = new olustur(merkez);
  
  Vec3D v = new Vec3D(0,0,-0.01);
  GravityBehavior g = new GravityBehavior(v); //düşme haraketi için davranış tanımlama
  fizik.addBehavior(g); // fizik elementine g davranışını ekliyoruz.
  
  //for(int i = 0; i < 20; i++){
  //   VerletParticle p = new VerletParticle(i * 10,0,0);
         
  //   if(i == 0){
  //    p.lock(); // oluşturulan p parçacığı için i.index 0 sa parçacığı kitle demektir.
  //  }
  //   fizik.addParticle(p);
  //}
  //for(int i = 1; i <fizik.particles.size(); i++){
    
  //  VerletParticle vp1 = (VerletParticle) fizik.particles.get(i);
  //  VerletParticle vp2 = (VerletParticle) fizik.particles.get(i-1);
    
  //  VerletSpring sp = new VerletSpring(vp1,vp2,10,0.1);
  //  fizik.addSpring(sp);
  
  //}
}
//
void draw(){
  background(0);
  
 stroke(255);
  strokeWeight(1);
  noFill();
  box(600);
  
  birim.yurut(); 
  
  ParcaCiz();
  
  SpringCiz();
  
  fizik.update();
}

void ParcaCiz(){
    for(int i = 0; i < fizik.particles.size(); i++){
    VerletParticle vp = (VerletParticle) fizik.particles.get(i);
    
    strokeWeight(5);
    if(vp.isLocked()){
      stroke(255,0,0);
    }else{
    stroke(0,255,200);
    }
    point(vp.x,vp.y,vp.z);
  } 
  
}

void SpringCiz(){
   for(int i = 0; i < fizik.springs.size(); i++){
    VerletSpring sp = (VerletSpring) fizik.springs.get(i);
    stroke(255);
    strokeWeight(1);
    line(sp.a.x,sp.a.y,sp.a.z, sp.b.x,sp.b.y,sp.b.z);  
  }
}