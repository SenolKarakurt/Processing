

void setup(){ // Ekranın yüklenmesi için gerekli fonksiyon
  size(600,600); //ekran boyutu 
  smooth(); // Fare hareketinin biraz daha pürüzsüz olması için kullanılan fonk.
}

void draw(){ // Çizilme için gerekli fonksiyon
  
  background(127); //0-255 arası değerler ekranın arka plan rengi değiştirir. RGB 
  
  /* ellipse(200,200,50,50); /* ekrana elips çizer. 
                              ilk değer x koordinatı 
                              ikinci değer y koordinatı
                              üçüncü değer width değeri
                              dördüncü değer height değeri */
     
     ellipse(mouseX,mouseY,50,50); /* mouseX --> Farenin x koordinatı
                                      mouseY --> Farenin y koordinatı */                      
}