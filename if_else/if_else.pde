
void setup(){
  size(600,600);
  smooth();
}

void draw(){
  
  background(0);
  
  for(int i = 0; i < 30; i++){
      
    if(i < 10){
        fill(255,0,0);
      }
      else if(i >= 10 && i < 15){
        fill(0,0,255);
      }
      else{
        fill(255);
      }
        ellipse(i*20,200,30,30);
    }
  }