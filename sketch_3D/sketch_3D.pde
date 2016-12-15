import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

//float z = 500; // z koordinatı

PeasyCam kamera; 

void setup(){
  size(600,600,P3D); // P3D -> 3D nin işlenmesi için gereklidir. Processing 3D
    
  kamera = new PeasyCam(this, 100);
  
}

void draw(){
  background(0);
  
  stroke(255);
  noFill();
  box(600);
  
  //z = z + 2; // z koordinatı her defasında artırılır.
  //camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ)
  //camera(500,400,z,   0,0,0,    0,0,1);
}