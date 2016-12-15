
void setup(){
  size(600,600);
  smooth();
}

void draw(){
  
  background(0);
  
  for(int i = 0; i < 30; i++){
      
    for(int j = 0; j < 30; j++){
       
        ellipse(i*20,j*20,30,30);
      
    }
  }
}